//
//  CCOscillate.m
//  WavingLabelTest
//
//  Created by Ashik Ahmad on 8/28/12.
//  Copyright 2012 WNeeds. All rights reserved.
//

#import "CCOscillate.h"


@implementation CCOscillate

+(id)actionWithPeriod:(ccTime)duration
                range:(float)vibRange
           startAngle:(float)start {
    return [[[self alloc] initWithPeriod:duration
                                   range:vibRange 
                              startAngle:start] autorelease];
}

-(id)initWithPeriod:(ccTime)duration 
              range:(float)vibRange 
         startAngle:(float)start {
    if ((self = [super init])) {
        range_ = vibRange;
        startAngle = start;
        T = duration;
        k = 2.0*M_PI / T;
    }
    return self;
}

-(id) copyWithZone: (NSZone*) zone
{
	CCAction *copy = [[[self class] allocWithZone: zone] initWithPeriod:T
                                                                  range:range_
                                                             startAngle:startAngle];
	return copy;
}

-(void)startWithTarget:(id)target {
    [super startWithTarget:target];
    
    midPoint = ((CCNode *)target).position;
        
    timeElapsed = 0;
}

-(BOOL) isDone {
    return NO; // like RepeateForever
}

-(void)step:(ccTime)dt {
    timeElapsed += dt;
    //Avoid jerk & exceeding float-boundary after long time
    if(T - timeElapsed < 0.000001)
        timeElapsed = 0;
    float dy = range_ * cos(k*timeElapsed - startAngle);
    [target_ setPosition:ccpAdd(midPoint, ccp(0, dy))];
}

@end
