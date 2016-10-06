//
//  DateChooserViewController.m
//  DateDiffCalc
//
//  Created by ZheyuanFu on 16/6/30.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "DateChooserViewController.h"

@interface DateChooserViewController ()

- (IBAction)dismissDateChooser:(id)sender;
- (IBAction)setDateTime:(id)sender;

@end


@implementation DateChooserViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [(ViewController *)self.delegate calculateDateDifference:[NSDate date]];
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    ((ViewController *)self.delegate).dateChooserVisible = NO;
}


- (IBAction)dismissDateChooser:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)setDateTime:(id)sender{
    [(ViewController *)self.delegate calculateDateDifference:((UIDatePicker *)sender).date];
}


@end


















