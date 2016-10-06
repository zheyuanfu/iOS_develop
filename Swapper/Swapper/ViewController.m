//
//  ViewController.m
//  Swapper
//
//  Created by ZheyuanFu on 16/5/31.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "ViewController.h"
#define kDeg2rad (3.1415926 / 180.0)

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *portraitView;
@property (strong, nonatomic) IBOutlet UIView *landscapeView;

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

- (NSUInteger) supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
    CGRect currentBounds = self.view.bounds;
    if(self.interfaceOrientation == UIInterfaceOrientationMaskLandscapeRight){
        self.view = self.landscapeView;
        self.view.transform = CGAffineTransformMakeRotation(kDeg2rad * 90);
    }else if(self.interfaceOrientation == UIInterfaceOrientationMaskLandscapeLeft){
        self.view = self.landscapeView;
        self.view.transform = CGAffineTransformMakeRotation(kDeg2rad * (-90));
    }else{
        self.view = self.portraitView;
        self.view.transform = CGAffineTransformMakeRotation(0);
    }
    self.view.bounds = currentBounds;
}
@end
