//
//  ViewController.m
//  FlowerColorTable
//
//  Created by ZheyuanFu on 16/5/31.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "ViewController.h"
#define kSectionCount 2
#define kRedSection 0
#define kBlueSection 1

@interface ViewController ()

@property (strong,nonatomic) NSArray *redFlowers;
@property (strong,nonatomic) NSArray *blueFlowers;

@end

@implementation ViewController

- (void)viewDidLoad {
    self.redFlowers = @[@"Gerbera",@"Peony",@"Rose",@"Poppy"];
    self.blueFlowers = @[@"Hyacinth",@"Hydrangea",@"Sea Holly",@"Phlox",@"Iris"];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*self.redFlowers = @[@"Gerbera",@"Peony",@"Rose",@"Poppy"];
    self.blueFlowers = @[@"Hyacinth",@"Hydrangea",@"Sea Holly",@"Phlox",@"Iris"];*/
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return kSectionCount;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    switch(section){
        case kRedSection:
            return [self.redFlowers count];
        case kBlueSection:
            return [self.blueFlowers count];
        default:
            return 0;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case kRedSection:
            return @"Red";
        case kBlueSection:
            return @"Blue";
        default:
            return @"Unknown";
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"flowerCell"];
    switch (indexPath.section) {
        case kRedSection:
            cell.textLabel.text = self.redFlowers[indexPath.row];
            break;
        case kBlueSection:
            cell.textLabel.text = self.blueFlowers[indexPath.row];
            break;
        default:
            cell.textLabel.text = @"Unknown";
    }
    UIImage *flowerImage;
    flowerImage = [UIImage imageNamed:cell.textLabel.text];
    cell.imageView.image = flowerImage;
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIAlertView *showSelection;
    NSString *flowerMessage;
    
    switch (indexPath.section) {
        case kRedSection:
            flowerMessage = [NSString stringWithFormat:@"You chose the red flower - %@",self.redFlowers[indexPath.row]];
            break;
        case kBlueSection:
            flowerMessage = [NSString stringWithFormat:@"You chose the blue flower - %@",self.blueFlowers[indexPath.row]];
            break;
        default:
            flowerMessage = [NSString stringWithFormat:@"I have no idea what you chose"];
            break;
    }
    
    showSelection = [[UIAlertView alloc] initWithTitle:@"Flower selected" message:flowerMessage delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [showSelection show];
}












@end
