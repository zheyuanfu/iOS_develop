//
//  ViewController.h
//  ModalEditor
//
//  Created by ZheyuanFu on 16/5/29.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction) exitToHere:(UIStoryboardSegue *)sender;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;


@end

