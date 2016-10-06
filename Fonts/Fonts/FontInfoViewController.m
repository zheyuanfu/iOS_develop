//
//  FontInfoViewController.m
//  Fonts
//
//  Created by ZheyuanFu on 16/6/16.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "FontInfoViewController.h"
#import "FavouritesList.h"

@interface FontInfoViewController ()

@property (weak, nonatomic) IBOutlet UILabel *fontSampleLabel;
@property (weak, nonatomic) IBOutlet UISlider *fontSizeSlider;
@property (weak, nonatomic) IBOutlet UILabel *fontSizeLabel;
@property (weak, nonatomic) IBOutlet UISwitch *favouriteSwitch;

@end

@implementation FontInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fontSampleLabel.font = self.font;
    self.fontSampleLabel.text = @"QWERTYUIOPASDFGHJKLZXCVBNM 0123456789";
    self.fontSizeSlider.value = self.font.pointSize;
    self.fontSizeLabel.text = [NSString stringWithFormat:@"%.0f",self.font.pointSize];
    self.favouriteSwitch.on = self.favourite;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slideFontSize:(UISlider *)slider{
    float newSize = roundf(slider.value);
//    NSLog(@"fontSize = %.0f",newSize);
    self.fontSampleLabel.font = [self.font fontWithSize:newSize];
    self.fontSizeLabel.text = [NSString stringWithFormat:@"%.0f", newSize];
}

- (IBAction)toggleFavourite:(UISwitch *)sender{
    FavouritesList *favouritesList = [FavouritesList sharedFavouritesList];
    if(sender.on){
        [favouritesList addFavourite:self.font.fontName];
    }else{
        [favouritesList removeFavourite:self.font.fontName];
    }
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
