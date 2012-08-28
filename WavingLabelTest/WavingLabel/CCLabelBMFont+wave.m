//
//  CCLabelBMFont+wave.m
//  WavingLabelTest
//
//  Created by Ashik Ahmad on 8/28/12.
//  Copyright 2012 WNeeds. All rights reserved.
//

#import "CCLabelBMFont+wave.h"

@implementation CCLabelBMFont (WaveEffect)

-(void)runWaveEffectWithHeight:(float)waveHeight
              numOfCharInAWave:(int)numOfCharInAWave
                         speed:(float)speed{
    float variation = M_PI/numOfCharInAWave;
    
    for (int i=0; i<self.string.length; i++) {
        CCSprite *ch = (CCSprite *) [self getChildByTag:i];
        [ch runAction:[CCOscillate actionWithPeriod:speed range:waveHeight startAngle:i*variation]];
    }
    
}

@end
