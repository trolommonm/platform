//
//  Player.m
//  platform
//
//  Created by Alvin Tan De Jun on 27/7/13.
//  Copyright (c) 2013 Alvin Tan De Jun. All rights reserved.
//

#import "Player.h"

@implementation Player

-(id)initWithFile:(NSString *)filename
{
    if (self = [super initWithFile:filename]) {
        self.velocity = ccp(0.0, 0.0);
    }
    return self;
}

-(CGRect)collisionBoundingBox {
    CGRect collisionBox = CGRectInset(self.boundingBox, 3, 0);
    CGPoint diff = ccpSub(self.desiredPosition, self.position);
    CGRect returnBoundingBox = CGRectOffset(collisionBox, diff.x, diff.y);
    return returnBoundingBox;
}

-(void)update:(ccTime)dt
{
    
    // 2
    CGPoint gravity = ccp(0.0, -450.0);
    
    // 3
    CGPoint gravityStep = ccpMult(gravity, dt);
    
    // 4
    self.velocity = ccpAdd(self.velocity, gravityStep);
    CGPoint stepVelocity = ccpMult(self.velocity, dt);
    
    // 5
    self.desiredPosition = ccpAdd(self.position, stepVelocity);
}

@end
