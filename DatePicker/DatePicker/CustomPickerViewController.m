//
//  CustomPickerViewController.m
//  DatePicker
//
//  Created by ZheyuanFu on 16/6/7.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "CustomPickerViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface CustomPickerViewController ()

@property (strong, nonatomic) NSArray *images;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) IBOutlet UILabel *winLabel;
- (IBAction)spin:(id)sender;

@end

@implementation CustomPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.images = @[[UIImage imageNamed:@"seven"], [UIImage imageNamed:@"bar"], [UIImage imageNamed:@"crown"], [UIImage imageNamed:@"cherry"], [UIImage imageNamed:@"lemon"], [UIImage imageNamed:@"apple"]];
    srandom(time(NULL));
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)spin:(id)sender {
    BOOL win = NO;
    int numInRow = 1;
    int lastVal = -1;
    for(int i = 0; i < 5; i ++){
        int newValue = random() % [self.images count];
        if(newValue == lastVal){
            numInRow ++;
        }else{
            numInRow = 1;
        }
        lastVal = newValue;
        [self.pickerView selectRow:newValue inComponent:i animated:YES];
        [self.pickerView reloadComponent:i];
        if(numInRow >= 3){
            win = YES;
        }
    }
    if(win){
        self.winLabel.text = @"WIN";
    }else{
        self.winLabel.text = @"";
    }
}
#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 5;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [self.images count];
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    UIImage *image = self.images[row];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    return imageView;
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
