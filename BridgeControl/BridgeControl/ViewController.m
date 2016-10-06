//
//  ViewController.m
//  BridgeControl
//
//  Created by ZheyuanFu on 16/6/19.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *officerLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorizationCodeLabel;
@property (weak, nonatomic) IBOutlet UILabel *rankLabel;
@property (weak, nonatomic) IBOutlet UILabel *warpDriveLabel;
@property (weak, nonatomic) IBOutlet UILabel *warpFactorLabel;
@property (weak, nonatomic) IBOutlet UILabel *favouriteTeaLabel;
@property (weak, nonatomic) IBOutlet UILabel *favouriteCaptainLabel;
@property (weak, nonatomic) IBOutlet UILabel *favouriteGadgetLabel;
@property (weak, nonatomic) IBOutlet UILabel *favouriteAlienLabel;

@end

@implementation ViewController

- (void)refreshFields{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.officerLabel.text = [defaults objectForKey:kOfficeKey];
    self.authorizationCodeLabel.text = [defaults objectForKey:kAuthorizationCodeKey];
    self.rankLabel.text = [defaults objectForKey:kRankKey];
    self.warpDriveLabel.text = [defaults objectForKey:kWarpDriveKey];
    self.warpFactorLabel.text = [defaults objectForKey:kWarpFactorKey];
    self.favouriteTeaLabel.text = [defaults objectForKey:kFavouriteTeaKey];
    self.favouriteCaptainLabel.text = [defaults objectForKey:kFavouriteCaptainKey];
    self.favouriteGadgetLabel.text = [defaults objectForKey:kFavouriteGadgetKey];
    self.favouriteAlienLabel.text = [defaults objectForKey:kFavouriteAlienKey];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self refreshFields];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
