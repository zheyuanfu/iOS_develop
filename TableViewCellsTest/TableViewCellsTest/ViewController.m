//
//  ViewController.m
//  TableViewCellsTest
//
//  Created by ZheyuanFu on 16/6/8.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "ViewController.h"
#import "NameAndColorCell.h"

static NSString *CellTableIdentifier = @"CellTableIdentifier";
@interface ViewController ()

@property (copy, nonatomic) NSArray *computers;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.computers = @[@{@"Name":@"MacBook Air",@"Color":@"Silver"},@{@"Name":@"MacBook Pro",@"Color":@"Silver"},@{@"Name":@"iMac",@"Color":@"Silver"},@{@"Name":@"Mac Mini",@"Color":@"Silver"},@{@"Name":@"Mac pro",@"Color":@"Black"}];
    UITableView *tableView = (id)[self.view viewWithTag:1];
    [tableView registerClass:[NameAndColorCell class] forCellReuseIdentifier:CellTableIdentifier];
    
    UIEdgeInsets contentInSet = tableView.contentInset;
    contentInSet.top = 20;
    [tableView setContentInset:contentInSet];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.computers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NameAndColorCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier forIndexPath:indexPath];
    NSDictionary *rowData = self.computers[indexPath.row];
    
    cell.name = rowData[@"Name"];
    cell.color = rowData[@"Color"];
    return cell;
}
@end






















