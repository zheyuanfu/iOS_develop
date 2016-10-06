//
//  GameScene.m
//  MySpriteGame
//
//  Created by ZheyuanFu on 16/6/28.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "LevelScene.h"

@implementation LevelScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
    myLabel.text = @"Hello, World!";
    myLabel.fontSize = 65;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:myLabel];
}
+ (instancetype)sceneWithSize:(CGSize)size levelNumber:(NSUInteger)levelNumber{
    return [[self alloc]initWithSize:size levelNumber:levelNumber];
}

- (instancetype)initWithSize:(CGSize)size{
    return [self initWithSize:size levelNumber:1];
}

- (instancetype) initWithSize:(CGSize)size levelNumber:(NSUInteger)levelNumber{
    if(self = [super initWithSize:size]){
        _levelNumber = levelNumber;
        _playerLives = 5;
        
        self.backgroundColor = [SKColor whiteColor];
        
        SKLabelNode *lives = [SKLabelNode labelNodeWithFontNamed:@"Courier"];
        lives.fontSize = 16;
        lives.fontColor = [SKColor blackColor];
        lives.name = @"LivesLabel";
        lives.text = [NSString stringWithFormat:@"Lives:%lu",(unsigned long)_playerLives];
        lives.verticalAlignmentMode = SKLabelVerticalAlignmentModeTop;
        lives.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeRight;
        lives.position = CGPointMake(self.frame.size.width, self.frame.size.height);
        
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
