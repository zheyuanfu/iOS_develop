//
//  ViewController.h
//  DateDiffCalc
//
//  Created by ZheyuanFu on 16/6/30.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DateChooserViewController.h"

@interface ViewController : UIViewController

@property (nonatomic) Boolean dateChooserVisible;
-(void)calculateDateDifference:(NSDate *)chosenDate;

@end

