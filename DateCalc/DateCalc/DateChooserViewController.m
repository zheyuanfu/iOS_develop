//
//  DateChooserViewController.m
//  DateCalc
//
//  Created by ZheyuanFu on 16/5/29.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "DateChooserViewController.h"

@interface DateChooserViewController ()
- (IBAction)setDateTime:(id)sender;
- (IBAction)dismissDateChooser:(id)sender;

@end

@implementation DateChooserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [(ViewController *)self.delegate calculateDateDifference:[NSDate date]];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    ((ViewController *)self.delegate).dateChooserVisible = NO;
}

- (IBAction)setDateTime:(id)sender {
    [(ViewController *)self.delegate calculateDateDifference:((UIDatePicker *)sender).date];
}

- (IBAction)dismissDateChooser:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
