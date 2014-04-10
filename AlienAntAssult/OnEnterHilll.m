//
//  OnEnterHilll.m
//  AlienAntAssult
//
//  Created by 2D Gaming on 4/3/14.
//  Copyright (c) 2014 elements. All rights reserved.
//

#import "OnEnterHilll.h"

@implementation OnEnterHilll

-(id)initWithSize:(CGSize)size Enter:(BOOL)Enter {
    if (self = [super initWithSize:size]) {
        
        // 1
        self.backgroundColor = [SKColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
        
        // 2
        NSString * message;
        if (Enter) {
            message = @"Do you want to Enter?";
        } else {
            message = @"Not Enter";
        }
        
        // 3
        SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"Papyrus"];
        label.text = message;
        label.fontSize = 40;
        label.fontColor = [SKColor blackColor];
        label.position = CGPointMake(self.size.width/2, self.size.height/2);
        [self addChild:label];
        
        // 4
        [self runAction:
         [SKAction sequence:@[
                              [SKAction waitForDuration:3.0],
                              [SKAction runBlock:^{
             // 5
             SKTransition *reveal = [SKTransition flipHorizontalWithDuration:0.5];
             SKScene * myScene = [[SKScene alloc] initWithSize:self.size];
             [self.view presentScene:myScene transition: reveal];
         }]
                              ]]
         ];
        
    }
    return self;
}

@end
