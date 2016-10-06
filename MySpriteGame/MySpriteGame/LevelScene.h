//
//  GameScene.h
//  MySpriteGame
//

//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface LevelScene : SKScene

@property (assign, nonatomic) NSUInteger levelNumber;
@property (assign, nonatomic) NSUInteger playerLives;
@property (assign, nonatomic) BOOL finished;

+ (instancetype) sceneWithSize:(CGSize)size levelNumber:(NSUInteger) levelNumber;
- (instancetype) initWithSize:(CGSize)size levelNumber:(NSUInteger) levelNumber;

@end