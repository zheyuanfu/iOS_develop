//
//  FlipsideViewController.h
//  BridgeControl
//
//  Created by ZheyuanFu on 16/6/23.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate

- (void) flipsideViewControllerDIdFinish:(FlipsideViewController *)controller;

@end

@interface FlipsideViewController : UIViewController

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UISwitch *engineSwitch;
@property (weak, nonatomic) IBOutlet UISlider *warpFactorSlider;

- (void)refreshFields;
- (void)engineSwitchTapped;
- (void)warpSliderTouched;
- (IBAction)done:(id)sender;

@end
