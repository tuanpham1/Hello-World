//
//  HWHomeViewController.h
//  Hello World
//
//  Created by cncsoft on 6/4/13.
//  Copyright (c) 2013 cncsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HWHomeViewController : UIViewController<UITextFieldDelegate> {

    IBOutlet UIImageView *imageViewIconLabel;
    IBOutlet UILabel *labelTitle;
    IBOutlet UITextField *textFieldNameUser;

}
@end
