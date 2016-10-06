//
//  ViewController.m
//  FlowerWeb
//
//  Created by ZheyuanFu on 16/5/23.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *colorChoice;
@property (weak, nonatomic) IBOutlet UIWebView *flowerView;
@property (weak, nonatomic) IBOutlet UIWebView *flowerDetailView;
- (IBAction)toggleFlowerDetail:(id)sender;
- (IBAction)getFlower:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.flowerDetailView.hidden = YES;
    [self getFlower:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toggleFlowerDetail:(id)sender {
    self.flowerDetailView.hidden = ![sender isOn];
}

- (IBAction)getFlower:(id)sender {
    NSURL *imageURL;
    NSURL *detailURL;
    NSString *imageURLString;
    NSString *detailURLString;
    NSString *color;
    int sessionID;
    
    color = [self.colorChoice titleForSegmentAtIndex:self.colorChoice.selectedSegmentIndex];
    sessionID = random() % 50000;
    
    imageURLString = [NSString stringWithFormat:
                      @"http://www.floraphotographs.com/showrandomios.php?color=%@&session=%d",
                      color, sessionID];
    detailURLString = [NSString stringWithFormat:
                       @"http://www.floraphotographs.com/detailios.php?session=%d", sessionID];
    imageURL = [NSURL URLWithString:imageURLString];
    detailURL = [NSURL URLWithString:detailURLString];
    
    [self.flowerView loadRequest:[NSURLRequest requestWithURL:imageURL]];
    [self.flowerDetailView loadRequest:[NSURLRequest requestWithURL:detailURL]];
}
@end
