//
//  ContentCell.h
//  DialogView
//
//  Created by ZheyuanFu on 16/6/18.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentCell : UICollectionViewCell

@property (strong, nonatomic) UILabel *label;
@property (copy, nonatomic) NSString *text;

+ (CGSize) sizeForContentString:(NSString *)string;

@end
