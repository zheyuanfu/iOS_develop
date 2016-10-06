//
//  ViewController.m
//  DebuggerTest
//
//  Created by ZheyuanFu on 16/5/31.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *description;
    NSLog(@"Start");
    for(int i = 1; i <= 10; i ++){
        description = [self describeInteger:i];
        NSLog(@"Variables: i - %d and description - %@", i, description);
        NSLog(@"-----");
    }
    NSLog(@"Done");
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)describeInteger:(int) i{
    if(i % 2 == 0){
        return @"even";
    }else{
        return @"odd";
    }
}
@end





















