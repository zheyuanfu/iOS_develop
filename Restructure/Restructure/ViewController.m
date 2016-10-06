//
//  ViewController.m
//  Restructure
//
//  Created by ZheyuanFu on 16/6/1.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIButton *actionButton1;
@property (weak, nonatomic) IBOutlet UIButton *actionButton2;
@property (weak, nonatomic) IBOutlet UIButton *actionButton3;
@property (weak, nonatomic) IBOutlet UIButton *actionButton4;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIApplication *application = [UIApplication sharedApplication];
    UIInterfaceOrientation currentOrientation = application.statusBarOrientation;
    [self doLayoutForOrientation:currentOrientation];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    [self doLayoutForOrientation:toInterfaceOrientation];
}
- (void)doLayoutForOrientation:(UIInterfaceOrientation)orientation{
    if(UIInterfaceOrientationIsPortrait(orientation)){
        [self layoutPortrait];
    }else{
        [self layoutLandscape];
    }
}

static const CGFloat buttonHeight = 40;
static const CGFloat buttonWidth = 120;
static const CGFloat spacing = 20;

- (void)layoutPortrait{
    CGRect b = self.view.bounds;
    CGFloat contentWidth = CGRectGetWidth(b) - 2 * spacing;
    CGFloat contentHeight = CGRectGetHeight(b) - 4 * spacing - 2 * buttonHeight;
    self.contentView.frame = CGRectMake(spacing, spacing, contentWidth, contentHeight);
    
    CGFloat buttonRow1 = 2 * spacing + contentHeight;
    CGFloat buttonRow2 = buttonRow1 + buttonHeight + spacing;
    CGFloat buttonCol1 = spacing;
    CGFloat buttonCol2 = buttonCol1 + buttonWidth + spacing;
    
    self.actionButton1.frame = CGRectMake(buttonCol1, buttonRow1, buttonWidth, buttonHeight);
    self.actionButton2.frame = CGRectMake(buttonCol2, buttonRow1, buttonWidth, buttonHeight);
    self.actionButton3.frame = CGRectMake(buttonCol1, buttonRow2, buttonWidth, buttonHeight);
    self.actionButton4.frame = CGRectMake(buttonCol2, buttonRow2, buttonWidth, buttonHeight);
    
}

- (void)layoutLandscape{
    CGRect b = self.view.bounds;
    CGFloat contentWidth = CGRectGetWidth(b) - 3 * spacing - buttonWidth;
    CGFloat contentHeight = CGRectGetHeight(b) - 2 * spacing;
    self.contentView.frame = CGRectMake(spacing, spacing, contentWidth, contentHeight);
    
    CGFloat buttonX = 2 * spacing + contentWidth;
    CGFloat button1y = spacing;
    CGFloat button4y = CGRectGetHeight(b) - spacing - buttonHeight;
    CGFloat button2y = button1y + floor((button4y - button1y) * 0.333);
    CGFloat button3y = button1y + floor((button4y - button1y) * 0.667);
    self.actionButton1.frame = CGRectMake(buttonX, button1y, buttonWidth, buttonHeight);
    self.actionButton2.frame = CGRectMake(buttonX, button2y, buttonWidth, buttonHeight);
    self.actionButton3.frame = CGRectMake(buttonX, button3y, buttonWidth, buttonHeight);
    self.actionButton4.frame = CGRectMake(buttonX, button4y, buttonWidth, buttonHeight);
}
@end
















