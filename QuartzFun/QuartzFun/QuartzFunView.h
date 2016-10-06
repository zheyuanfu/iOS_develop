//
//  QuartzFunView.h
//  QuartzFun
//
//  Created by ZheyuanFu on 16/6/25.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"

@interface QuartzFunView : UIView

@property (assign, nonatomic)CGPoint firstTouchLocation;
@property (assign, nonatomic)CGPoint lastTouchLocation;
@property (assign, nonatomic)ShapeType shapeType;
@property (assign, nonatomic)BOOL useRandomColor;
@property (strong, nonatomic)UIColor *currentColor;
@property (strong, nonatomic)UIImage *drawImage;

@end