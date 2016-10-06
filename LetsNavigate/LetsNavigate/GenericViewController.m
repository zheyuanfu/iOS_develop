//
//  GenericViewController.m
//  LetsNavigate
//
//  Created by ZheyuanFu on 16/5/30.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "GenericViewController.h"
#import "CountingNavigationController.h"

@interface GenericViewController ()
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
- (IBAction)incrementCound:(id)sender;

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

- (IBAction)incrementCound:(id)sender {
    ((CountingNavigationController *)self.parentViewController).pushCount ++;
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSString *pushText;
    pushText = [NSString stringWithFormat:@"%d",((CountingNavigationController *)self.parentViewController).pushCount];
    self.countLabel.text = pushText;
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
