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
    imageViewIconLabel.image = [UIImage imageNamed:@"icon-label.jpeg"];
    labelTitle.text = @"Bạn hãy nhập tên của mình!";
    textFieldNameUser.delegate = self;
}
// begin show keyboarch
-(void)textFieldDidBeginEditing:(UITextField *)textField {
    [textField setReturnKeyType:UIReturnKeyDone];
}
// get text from text field
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    return YES;

}
// when click done button
-(BOOL)textFieldShouldReturn:(UITextField *)textField {

    if (textField.text.length != 0) {
        NSString *strTitle = [NSString stringWithFormat:@"Welcome, %@",[textField.text uppercaseString]];
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
