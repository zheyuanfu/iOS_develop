//
//  EditorViewController.m
//  MultiViewControllerTest
//
//  Created by ZheyuanFu on 16/6/1.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "EditorViewController.h"

@interface EditorViewController ()

@property (weak, nonatomic) IBOutlet UITextField *emailField;
- (IBAction)updateEditor:(UIButton *)sender;
- (IBAction)hideKeyboard:(id)sender;

@end

@implementation EditorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.emailField.text = ((ViewController *)self.presentingViewController).emailLabel.text;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)updateEditor:(UIButton *)sender {
    ((ViewController *)self.presentingViewController).emailLabel.text = self.emailField.text;
}

- (IBAction)hideKeyboard:(id)sender {
    [self.emailField resignFirstResponder];
}
@end




















