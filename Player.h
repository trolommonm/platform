//
//  Player.h
//  platform
//
//  Created by Alvin Tan De Jun on 27/7/13.
//  Copyright (c) 2013 Alvin Tan De Jun. All rights reserved.
//

#import "cocos2d.h"
#import "CCSprite.h"

@interface Player : CCSprite{
    
}

@property (nonatomic, assign) CGPoint velocity;
@property (nonatomic, assign) CGPoint desiredPosition;
@property (nonatomic, assign) BOOL onGround;

-(id)initWithFile:(NSString *)filename;
-(CGRect)collisionBoundingBox;

@end
