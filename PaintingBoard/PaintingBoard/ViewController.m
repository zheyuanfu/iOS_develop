//
//  ViewController.m
//  PaintingBoard
//
//  Created by ZheyuanFu on 16/6/27.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "ViewController.h"
#import "Constants.h"
#import "PaintingBoardView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *colorControl;

- (IBAction)changeColor:(UISegmentedControl *)sender;
- (IBAction)changeShape:(UISegmentedControl *)sender;

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

- (IBAction)changeColor:(UISegmentedControl *)sender {
//    UISegmentedControl *control = sender;
    ColorTabIndex index  = [sender selectedSegmentIndex];
    PaintingBoardView *currentView = (PaintingBoardView *)self.view;
    
    switch (index) {
        case kRedColorTab:
            currentView.currentColor = [UIColor redColor];
            currentView.useRandomColor = NO;
            break;
        case kBlueColorTab:
            currentView.currentColor = [UIColor blueColor];
            currentView.useRandomColor = NO;
            break;
        case kYellowColorTab:
            currentView.currentColor = [UIColor yellowColor];
            currentView.useRandomColor = NO;
            break;
        case kGreenColorTab:
            currentView.currentColor = [UIColor greenColor];
            currentView.useRandomColor = NO;
            break;
        case kRandomColorTab:
            currentView.useRandomColor = YES;
            break;
        default:
            break;
    }
}

- (IBAction)changeShape:(UISegmentedControl *)sender {
    [(PaintingBoardView *)self.view setShapeType:[sender selectedSegmentIndex]];
    
    if([sender selectedSegmentIndex] == kImageShape){
        self.colorControl.enabled = NO;
    }else{
        self.colorControl.enabled = YES;
    }
}
@end
















