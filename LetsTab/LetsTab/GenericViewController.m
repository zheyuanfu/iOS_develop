//
//  GenericViewController.m
//  LetsTab
//
//  Created by ZheyuanFu on 16/5/30.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "GenericViewController.h"

@interface GenericViewController ()

@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UITabBarItem *barItem;
- (IBAction)incrementCountFirst:(id)sender;
- (IBAction)incrementCountSecond:(id)sender;
- (IBAction)incrementCountThird:(id)sender;
- (void)updateCounts;
- (void)updateBadge;

@end

@implementation GenericViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)incrementCountFirst:(id)sender {
    ((CountingTabBarController *)self.parentViewController).firstCount ++;
    [self updateCounts];
    [self updateBadge];
}

- (IBAction)incrementCountSecond:(id)sender {
    ((CountingTabBarController *)self.parentViewController).secondCount ++;
    [self updateCounts];
    [self updateBadge];
}

- (IBAction)incrementCountThird:(id)sender {
    ((CountingTabBarController *)self.parentViewController).thirdCount ++;
    [self updateCounts];
    [self updateBadge];
}

-(void)updateCounts{
    NSString *countString;
    countString = [NSString stringWithFormat:@"First:%d\nsecond:%d\nThird:%d", ((CountingTabBarController *)self.parentViewController).firstCount,((CountingTabBarController *)self.parentViewController).secondCount, ((CountingTabBarController *)self.parentViewController).thirdCount];
    self.outputLabel.text = countString;
}

- (void)updateBadge{
    NSString *badgeCount;
    int currentBadge;
    currentBadge = [self.barItem.badgeValue intValue];
    currentBadge ++;
    badgeCount = [NSString stringWithFormat:@"%d", currentBadge];
    self.barItem.badgeValue = badgeCount;
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
