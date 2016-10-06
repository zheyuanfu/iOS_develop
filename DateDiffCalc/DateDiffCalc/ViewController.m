//
//  ViewController.m
//  DateDiffCalc
//
//  Created by ZheyuanFu on 16/6/30.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
-(IBAction)showDateChooser:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ((DateChooserViewController *)segue.destinationViewController).delegate = self;
}

- (IBAction)showDateChooser:(id)sender{
    if (self.dateChooserVisible!=YES) {
        [self performSegueWithIdentifier:@"toDateChooser" sender:sender];
        self.dateChooserVisible=YES;
    }
}

- (void)calculateDateDifference:(NSDate *)chosenDate{
    NSDate *todayDate;
    NSString *todayDateString;
    NSString *chosenDateString;
    NSString *differenceOutput;
    NSDateFormatter *dateFormat;
    NSTimeInterval difference;
    todayDate = [NSDate date];
    difference = [todayDate timeIntervalSinceDate:chosenDate] / 86400;
//    difference = [todaysDate timeIntervalSinceDate:chosenDate] / 86400;
    dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"MMMM d, yyyy hh:mm:ssa"];
    todayDateString = [dateFormat stringFromDate:todayDate];
    chosenDateString = [dateFormat stringFromDate:chosenDate];
    differenceOutput = [[NSString alloc] initWithFormat:@"Difference between chosen date (%@) and todya date (%@) in days: %1.2f", chosenDateString, todayDateString,fabs(difference)];
    self.outputLabel.text = differenceOutput;
}

@end






















