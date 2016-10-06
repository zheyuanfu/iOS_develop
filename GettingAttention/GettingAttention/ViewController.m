//
//  ViewController.m
//  GettingAttention
//
//  Created by ZheyuanFu on 16/5/28.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


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

- (IBAction)doAlert:(id)sender {
    UIAlertView *alertDialog;
    alertDialog = [[UIAlertView alloc]
                   initWithTitle:@"Alert Button Selected!" message:@"I need ur attention NOW!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alertDialog show];
}

- (IBAction)doMultiButtonAlert:(id)sender {
    UIAlertView *alertDialog;
    alertDialog = [[UIAlertView alloc]
                   initWithTitle:@"Alert Button selected!" message:@"I need ur attention NOW!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"Maybe Later",@"Never", nil];
    [alertDialog show];
}

- (IBAction)doAlertInput:(id)sender {
    UIAlertView *alertDialog;
    alertDialog = [[UIAlertView alloc]
                   initWithTitle:@"Email Address" message:@"Please enter your email address" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    alertDialog.alertViewStyle = UIAlertViewStylePlainTextInput;
    [alertDialog show];
}

- (IBAction)doActionSheet:(id)sender {
    UIActionSheet *actionSheet;
    actionSheet = [[UIActionSheet alloc] initWithTitle:@"Available actions" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Destroy" otherButtonTitles:@"Negotiate", @"Compromise", nil];
    actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
    [actionSheet showFromRect:[(UIButton *)sender frame] inView:self.view animated:YES];
}

- (IBAction)doSound:(id)sender {
    SystemSoundID soundID;
    NSString *soundFile = [[NSBundle mainBundle] pathForResource:@"soundeffect" ofType:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) [NSURL fileURLWithPath:soundFile], &soundID);
    AudioServicesPlaySystemSound(soundID);
}

- (IBAction)doAlertSound:(id)sender {
}

- (IBAction)doVibration:(id)sender {
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if([buttonTitle isEqualToString:@"Maybe Later"]){
        self.userOutput.text = @"'Maybe Later' clicked";
    }else if([buttonTitle isEqualToString:@"Never"]){
        self.userOutput.text = @"'Never' clicked";
    }else{
        self.userOutput.text = @"'OK' clicked";
    }
    if([alertView.title isEqualToString:@"Email Address"]){
        self.userOutput.text = [[alertView textFieldAtIndex:0] text];
    }
}
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
    if([buttonTitle isEqualToString:@"Destroy"]){
        self.userOutput.text = @"'Destroy' clicked";
    }else if([buttonTitle isEqualToString:@"Negotiate"]){
        self.userOutput.text = @"'Negotiate' clicked";
    }else if([buttonTitle isEqualToString:@"Compromise"]){
        self.userOutput.text = @"'Compromised' clicked";
    }else{
        self.userOutput.text = @"'Cancel' clicked";
    }
}

















@end
