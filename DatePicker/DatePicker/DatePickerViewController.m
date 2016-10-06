//
//  DatePickerViewController.m
//  DatePicker
//
//  Created by ZheyuanFu on 16/6/7.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
- (IBAction)buttonPress:(id)sender;

@end

@implementation DatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDate *now = [NSDate date];
    [self.datePicker setDate:now animated:NO];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPress:(id)sender {
    NSDate *selected = [self.datePicker date];
    NSString *message = [[NSString alloc] initWithFormat:@"The date u selected is:%@",selected];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Date and Time selected" message:message delegate:nil cancelButtonTitle:@"That's true" otherButtonTitles: nil];
    [alert show];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
