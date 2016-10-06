//
//  Constants.h
//  QuartzFun
//
//  Created by ZheyuanFu on 16/6/25.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#ifndef QuartzFun_Constants_h
#define QuartzFun_Constants_h

typedef NS_ENUM(NSInteger, ShapeType){
    kLineShape = 0,
    kRectShape,
    kEllipseShape,
    kImageShape
};

typedef NS_ENUM(NSInteger, ColorTabIndex){
    kRedColorTab = 0,
    kBlueColorTab,
    kYellowColorTab,
    kGreenColorTab,
    kRandomColorTab
};

#define degreesToRadian(x) (M_PI * (x) / 180.0)

#endif
