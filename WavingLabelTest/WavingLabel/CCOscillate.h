//
//  CCOscillate.h
//  WavingLabelTest
//
//  Created by Ashik Ahmad on 8/28/12.
//  Copyright 2012 WNeeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface CCOscillate : CCAction <NSCopying> {
    // y or x or scale = f(t) = A*cos(2*PI*(1/T)*t + THETA)
    // Suppose,
    // k = 2*PI*(1/T)
    // THETA = (+/-) startAngle
    // T = duration, 1 wave in duration
    // A = range
    
    float range_;
    
    float timeElapsed;
    float startAngle; // in radians
    float T;
    float k;
    
    CGPoint midPoint;
    float originalScale;
}

+(id)actionWithPeriod:(ccTime)duration
                range:(float) vibRange
           startAngle:(float) start;
-(id)initWithPeriod:(ccTime)duration
              range:(float) vibRange
         startAngle:(float) start;


@end

