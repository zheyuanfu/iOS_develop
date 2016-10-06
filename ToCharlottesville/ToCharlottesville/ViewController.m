//
//  ViewController.m
//  ToCharlottesville
//
//  Created by ZheyuanFu on 16/5/31.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "ViewController.h"
#define kCharlottesvilleLatitude 38.0293
#define kCharlottesvilleLongitude 78.4767

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *distanceView;
@property (weak, nonatomic) IBOutlet UIView *waitView;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property (strong,nonatomic) CLLocationManager *locMan;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.locMan = [CLLocationManager new];
    self.locMan.delegate = self;
    self.locMan.desiredAccuracy = kCLLocationAccuracyThreeKilometers;
    self.locMan.distanceFilter = 1609;
    [self.locMan startUpdatingLocation];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    if(error.code == kCLErrorDenied){
        [self.locMan stopUpdatingLocation];
        self.locMan = nil;
    }
    self.waitView.hidden = YES;
    self.distanceView.hidden = YES;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateTpLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    if(newLocation.horizontalAccuracy >= 0){
        CLLocation *Charlottesville = [[CLLocation alloc] initWithLatitude:kCharlottesvilleLatitude longitude:kCharlottesvilleLongitude];
        CLLocationDistance delta = [Charlottesville distanceFromLocation:newLocation];
        long miles = (delta * 0.000621371) + 0.5;
        if(miles < 3){
            [self.locMan stopUpdatingLocation];
            self.distanceLabel.text = @"Congradulation!";
        }else{
            NSNumberFormatter *commaDelimited = [NSNumberFormatter new];
            [commaDelimited setNumberStyle:NSNumberFormatterDecimalStyle];
            self.distanceLabel.text = [NSString stringWithFormat:@"%@ miles to Charloteesvile",[commaDelimited stringFromNumber:[NSNumber numberWithLong:miles]]];
        }
        self.waitView.hidden = YES;
        self.distanceView.hidden = NO;
    }
}
@end















