//
//  ViewController.h
//  DateCalc
//
//  Created by ZheyuanFu on 16/5/29.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DateChooserViewController.h"

@interface ViewController : UIViewController

@property (nonatomic) Boolean dateChooserVisible;

- (void)calculateDateDifference:(NSDate *)chosenDate;

@end

