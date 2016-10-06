//
//  ViewController.m
//  TableViewTest
//
//  Created by ZheyuanFu on 16/6/8.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (copy, nonatomic) NSArray *dwarves;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dwarves = @[@"RNG mlxg",@"RNGMata",@"RNG Uzi",@"RNG xiaohu",@"RNG Looper",@"EDG clearlove", @"EDG Meiko", @"EDG deft", @"EDG Scout",@"EDG korol",@"Snake Flandre",@"Snake zzr",@"Snake tank",@"Snake crystal",@"Snake jiezou",@
                     "WE xiye",@"WE condi",@"WE 957",@"WE mystic",@"WE zero",@"NewBee V",@"NewBee Swift",@"NewBee Dade",@"NewBee HappyY",@"NewBee MorZ"];
    UITableView *tableView = (id)[self.view viewWithTag:1];
    UIEdgeInsets contentInSet = tableView.contentInset;
    contentInSet.top = 100;
    [tableView setContentInset:contentInSet];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.dwarves count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simpleTableIdentifier = @"SimpleTableIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    UIImage *image = [UIImage imageNamed:@"star"];
    cell.imageView.image = image;
    cell.textLabel.text = self.dwarves[indexPath.row];
    return cell;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row == 0){
        return nil;
    }else{
        return indexPath;
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *rowValue = self.dwarves[indexPath.row];
    NSString *message = [[NSString alloc]initWithFormat:@"You selected %@", rowValue];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Row selected" message:message delegate:nil cancelButtonTitle:@"Yes I did." otherButtonTitles: nil];
    [alert show];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end















