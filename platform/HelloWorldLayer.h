//
//  HelloWorldLayer.h
//  platform
//
//  Created by Alvin Tan De Jun on 27/7/13.
//  Copyright Alvin Tan De Jun 2013. All rights reserved.
//


#import <GameKit/GameKit.h>

// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"
#import "Player.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayer
{
    CCTMXTiledMap *map;
    CCTMXLayer *walls;
    Player *robot;
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end
