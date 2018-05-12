//
//  PricingViewController.m
//  FindMeDrivingTest
//
//  Created by admin on 12/05/2018.
//  Copyright © 2018 dev. All rights reserved.
//

#import "PricingViewController.h"
#import "SignupViewController.h"

@interface PricingViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btt_Price;
@property (weak, nonatomic) IBOutlet UIButton *btt_Signup;

@end

@implementation PricingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initUI {
    _btt_Signup.layer.cornerRadius = _btt_Signup.frame.size.height/2;
    _btt_Signup.layer.masksToBounds = YES;
    _btt_Price.layer.cornerRadius = 10;
    _btt_Price.layer.masksToBounds = YES;
    
}

- (IBAction)clickBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)clickPrice:(id)sender {
}

- (IBAction)clickSignup:(id)sender {
    SignupViewController *pricingview = (SignupViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"SignupViewController"];
    [self.navigationController pushViewController:pricingview animated:YES];
}


@end
