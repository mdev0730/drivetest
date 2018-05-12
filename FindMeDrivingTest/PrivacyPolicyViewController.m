//
//  PrivacyPolicyViewController.m
//  FindMeDrivingTest
//
//  Created by admin on 12/05/2018.
//  Copyright © 2018 dev. All rights reserved.
//

#import "PrivacyPolicyViewController.h"

@interface PrivacyPolicyViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lb_Title;
@property (weak, nonatomic) IBOutlet UITextView *txt_Policy;
@property (weak, nonatomic) IBOutlet UITextView *txt_Terms;

@end

@implementation PrivacyPolicyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if([self.mode isEqualToString:@"Terms"]){
        [_lb_Title setText:@"Terms of Service"];
        [_txt_Policy setHidden:YES];
        [_txt_Terms setHidden:NO];
    }else{
        [_lb_Title setText:@"Privacy Policy"];
        [_txt_Policy setHidden:NO];
        [_txt_Terms setHidden:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click_Back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
