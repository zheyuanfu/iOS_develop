//
//  ViewController.h
//  MultiViewControllerTest
//
//  Created by ZheyuanFu on 16/6/1.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
- (IBAction) exitToHere:(UIStoryboardSegue *)sender;

@end

