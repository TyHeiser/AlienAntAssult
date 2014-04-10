//
//  Entity.m
//  AlienAntAssult
//
//  Created by 2D Gaming on 4/3/14.
//  Copyright (c) 2014 elements. All rights reserved.
//

#import "Entity.h"

@implementation Entity

     SKNode *_tunnels;
     SKNode *_tunnelsLayer;


- (instancetype)initWithPosition:(CGPoint)position {
    if (self = [super init]) {
        self.texture = [[self class] generateTexture]; self.size = self.texture.size;
        self.position = position;
        _direction = CGPointZero;
        
        SKSpriteNode * _tunnels =
        [SKSpriteNode spriteNodeWithImageNamed:@"IceSurface"];
        _tunnels.position = CGPointMake(400, 150);
        //bg.position = CGPointMake(0, 0);
        _tunnels.Scale = .2;
        [_tunnels runAction: [SKAction scaleTo:1.5 duration:10]];
        _tunnels.zPosition = 0;
        
        
        _tunnels.name = @"bg";
        [_tunnelsLayer addChild:_tunnels];
        
         _tunnelsLayer        = [SKNode node];

        
        
        
    }
    return self; }
- (void)update:(CFTimeInterval)delta {
    // Overridden by subclasses
}
+ (SKTexture *)generateTexture {
    // Overridden by subclasses
    return nil; }

@end
