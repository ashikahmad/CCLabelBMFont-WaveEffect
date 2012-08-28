//
//  CCLabelBMFont+wave.h
//  WavingLabelTest
//
//  Created by Ashik Ahmad on 8/28/12.
//  Copyright 2012 WNeeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "CCOscillate.h"


@interface CCLabelBMFont (WaveEffect)

-(void) runWaveEffectWithHeight:(float) waveHeight
               numOfCharInAWave:(int) numOfCharInAWave
                          speed:(float) speed;

@end

