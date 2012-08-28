//
//  HelloWorldLayer.m
//  WavingLabelTest
//
//  Created by Ashik Ahmad on 8/28/12.
//  Copyright WNeeds 2012. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"
#import "CCLabelBMFont+wave.h"

// Needed to obtain the Navigation Controller
#import "AppDelegate.h"

#pragma mark - HelloWorldLayer

// HelloWorldLayer implementation
@implementation HelloWorldLayer

// Helper class method that creates a Scene with the HelloWorldLayer as the only child.
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init]) ) {
        CGSize size = [[CCDirector sharedDirector] winSize];
        CGPoint midPoint = ccpMult(ccpFromSize(size), 0.5);
		CCLabelBMFont *label = [CCLabelBMFont labelWithString:@"Hello, Waving BMFont!" fntFile:@"Monalisa.fnt"];
        label.position = ccpAdd(midPoint, ccp(0, 50));
        [self addChild:label];
        [label runWaveEffectWithHeight:3 numOfCharInAWave:5 speed:0.3];
        
        CCLabelBMFont *label2 = [CCLabelBMFont labelWithString:@"Isn't it looking nice?" fntFile:@"Monalisa.fnt"];
        label2.position = ccpAdd(midPoint, ccp(0, -50));
        [self addChild:label2];
        [label2 runWaveEffectWithHeight:10 numOfCharInAWave:8 speed:0.6];
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}

@end
