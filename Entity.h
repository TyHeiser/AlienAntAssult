//
//  Entity.h
//  AlienAntAssult
//
//  Created by 2D Gaming on 4/3/14.
//  Copyright (c) 2014 elements. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface Entity : SKSpriteNode
@property (assign,nonatomic) CGPoint direction;
@property (assign,nonatomic) float health;
@property (assign,nonatomic) float maxHealth;

+ (SKTexture *)generateTexture;
- (instancetype)initWithPosition:(CGPoint)position;
- (void)update:(CFTimeInterval)delta;

@end
