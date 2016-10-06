//
//  FontListViewController.h
//  Fonts
//
//  Created by ZheyuanFu on 16/6/16.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FontListViewController : UITableViewController

@property (copy, nonatomic) NSArray *fontNames;
@property (assign, nonatomic) BOOL showsFavourites;

@end
