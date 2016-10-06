//
//  ViewController.m
//  StoreToFile
//
//  Created by ZheyuanFu on 16/6/30.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsView;
@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *email;

- (IBAction)storeData:(id)sender;
- (IBAction)showResults:(id)sender;
- (IBAction)hideKeyboard:(id)sender;

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

- (void) storeData:(id)sender{
    NSString *csvLine = [NSString stringWithFormat:@"%@,%@,%@\n", self.firstName.text, self.lastName.text, self.email.text];
    NSString *docDir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *surveyFile = [docDir stringByAppendingString:@"surveyResults.csv"];
    
    if(![[NSFileManager defaultManager] fileExistsAtPath:surveyFile]){
        [[NSFileManager defaultManager] createFileAtPath:surveyFile contents:nil attributes:nil];
    }
    
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForUpdatingAtPath:surveyFile];
    [fileHandle seekToEndOfFile];
    [fileHandle writeData:[csvLine dataUsingEncoding:NSUTF8StringEncoding]];
    [fileHandle closeFile];
    
    self.firstName.text = @"";
    self.lastName.text = @"";
    self.email.text = @"";
}

- (void) showResults:(id)sender{
    NSString *docDir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *surveyFile = [docDir stringByAppendingString:@"surveyResults.csv"];
    
    if([[NSFileManager defaultManager] fileExistsAtPath:surveyFile]){
        NSFileHandle *fileHandle = [NSFileHandle fileHandleForUpdatingAtPath:surveyFile];
        NSString *surveyResults = [[NSString alloc] initWithData:[fileHandle availableData] encoding:NSUTF8StringEncoding];
        [fileHandle closeFile];
        self.resultsView.text = surveyResults;
    }
}

- (void) hideKeyboard:(id)sender{
    [self.firstName resignFirstResponder];
    [self.lastName resignFirstResponder];
    [self.email resignFirstResponder];
}

@end





















