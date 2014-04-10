//
//  AntHill.m
//  AlienAntAssult
//
//  Created by 2D Gaming on 4/6/14.
//  Copyright (c) 2014 elements. All rights reserved.
//

#import "AntHill.h"
#import "MyScene.h"
SKNode *_tunnels;
SKNode *_tunnelsLayer;

@implementation AntHill

- (id)initWithSize:(CGSize)size acheivment:(BOOL)acheivment
{
    if (self = [super initWithSize:size]) {
        SKSpriteNode *_tunnels;
        if (acheivment) {
            _tunnels = [SKSpriteNode
                  spriteNodeWithImageNamed:@"BlueFillement"];
            //[self runAction:[SKAction sequence:@[
            // [SKAction waitForDuration:0.1],
            // [SKAction playSoundFileNamed:@"win.wav"
            //      waitForCompletion:NO]]]
            //];
        } else {
            _tunnels = [SKSpriteNode
                  spriteNodeWithImageNamed:@"AsteriodMap"];
            //[self runAction:[SKAction sequence:@[
            //[SKAction waitForDuration:0.1],
            //[SKAction playSoundFileNamed:@"lose.wav"
            // waitForCompletion:NO]]]
            // ];
        }
        _tunnels.position = CGPointMake(self.size.width/2, self.size.height/2);
        [self addChild:_tunnels];
        
        // More here
        SKAction * wait = [SKAction waitForDuration:3.0];
        SKAction * block =
        [SKAction runBlock:^{
            MyScene * myScene =
            [[MyScene alloc] initWithSize:self.size];
            
            //AntHill * _AntHill =
            //[[MyScene alloc] initWithSize:self.size];
            
            SKTransition *reveal =
            [SKTransition flipHorizontalWithDuration:0.5];
            
            [self.view presentScene:myScene transition: reveal];
        }];
        [self runAction:[SKAction sequence:@[wait, block]]];
        
    }
    return self;
}

@end


/* @implementation GameOverScene
 
 - (id)initWithSize:(CGSize)size won:(BOOL)won
 {
 if (self = [super initWithSize:size]) {
 SKSpriteNode *bg;
 if (won) {
 bg = [SKSpriteNode
 spriteNodeWithImageNamed:@"YouWin.png"];
 //[self runAction:[SKAction sequence:@[
 // [SKAction waitForDuration:0.1],
 // [SKAction playSoundFileNamed:@"win.wav"
 //      waitForCompletion:NO]]]
 //];
 } else {
 bg = [SKSpriteNode
 spriteNodeWithImageNamed:@"YouLose.png"];
 //[self runAction:[SKAction sequence:@[
 //[SKAction waitForDuration:0.1],
 //[SKAction playSoundFileNamed:@"lose.wav"
 // waitForCompletion:NO]]]
 // ];
 }
 bg.position = CGPointMake(self.size.width/2, self.size.height/2);
 [self addChild:bg];
 
 // More here
 SKAction * wait = [SKAction waitForDuration:3.0];
 SKAction * block =
 [SKAction runBlock:^{
 MyScene * myScene =
 [[MyScene alloc] initWithSize:self.size];
 
 SKTransition *reveal =
 [SKTransition flipHorizontalWithDuration:0.5];
 
 [self.view presentScene:myScene transition: reveal];
 }];
 [self runAction:[SKAction sequence:@[wait, block]]];
 
 }
 return self;
 }
 
 @end */






