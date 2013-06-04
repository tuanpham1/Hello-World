//
//  HWHomeViewController.m
//  Hello World
//
//  Created by cncsoft on 6/4/13.
//  Copyright (c) 2013 cncsoft. All rights reserved.
//

#import "HWHomeViewController.h"

@interface HWHomeViewController ()

@end

@implementation HWHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    lbTitle.text = @"Bạn hãy nhập tên của mình!";
    tfName.delegate = self;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField {
    [textField setReturnKeyType:UIReturnKeyDone];
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    return YES;

}
-(BOOL)textFieldShouldReturn:(UITextField *)textField {

    NSLog(@"textField:%@",textField.text);
    if (textField.text.length != 0) {
        NSString *strTitle = [NSString stringWithFormat:@"Welcome,%@",[textField.text uppercaseString]];
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"" message:strTitle delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
        textField.text = @"";
        [textField resignFirstResponder];
        
    } else {
    
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"" message:@"Bạn chưa nhập tên!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    }
    
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
