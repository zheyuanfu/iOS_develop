//
//  DoubleComponentPickerViewController.m
//  DatePicker
//
//  Created by ZheyuanFu on 16/6/7.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "DoubleComponentPickerViewController.h"

@interface DoubleComponentPickerViewController ()
- (IBAction)buttonPressed:(id)sender;

@end

@implementation DoubleComponentPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fillingTypes = @[@"Ham",@"Turkey",@"Peanut butter",@"Tuna salad",@"Chickien salad",@"Roast beef",@"Vegemite"];
    self.breadTypes = @[@"White",@"Whole wheat",@"Rye",@"Sourdough",@"Seven grain"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    NSInteger fillingRow = [self.doublePicker selectedRowInComponent:kFillingComponent];
    NSInteger breadRow = [self.doublePicker selectedRowInComponent:kBreadComponent];
    NSString *filling = self.fillingTypes[fillingRow];
    NSString *bread = self.breadTypes[breadRow];
    NSString *message = [[NSString alloc]initWithFormat:@"Your %@ on %@ bread will be right up.",filling, bread];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Thank you for your order." message:message delegate:nil cancelButtonTitle:@"Great!" otherButtonTitles: nil];
    [alert show];
}
#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == kBreadComponent){
        return [self.breadTypes count];
    }else{
        return [self.fillingTypes count];
    }
}

#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component == kBreadComponent){
        return self.breadTypes[row];
    }else{
        return self.fillingTypes[row];
    }
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
