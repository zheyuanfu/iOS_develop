//
//  EditorViewController.m
//  ModalEditor
//
//  Created by ZheyuanFu on 16/5/29.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "EditorViewController.h"

@interface EditorViewController ()
@property (weak, nonatomic) IBOutlet UITextField *emailField;
- (IBAction)updateEditor:(id)sender;
- (IBAction)hideKeyboard:(id)sender;

@end

@implementation EditorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.emailField.text = ((ViewController *)self.presentingViewController).emailLabel.text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) exitToHere:(UIStoryboardSegue *)sender{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)updateEditor:(id)sender {
    ((ViewController *)self.presentingViewController).emailLabel.text = self.emailField.text;
}

- (IBAction)hideKeyboard:(id)sender {
    [self.emailField resignFirstResponder];
}
@end
