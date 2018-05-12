//  SignupViewController.m
//  FindMeDrivingTest
//
//  Created by admin on 05/05/2018.
//  Copyright © 2018 dev. All rights reserved.
//

#import "SignupViewController.h"
#import "PrivacyPolicyViewController.h"

@interface SignupViewController ()<UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *txt_Username;
@property (weak, nonatomic) IBOutlet UITextField *txt_Phone;
@property (weak, nonatomic) IBOutlet UITextField *txt_Date;
@property (weak, nonatomic) IBOutlet UIButton *btt_Proceed;
@property (weak, nonatomic) IBOutlet UIButton *btt_Date;

@end
NSDateFormatter *timeFormatter;
UIDatePicker *dobDatePicker;

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    dobDatePicker = [[UIDatePicker alloc] init];
    self.btt_Proceed.layer.cornerRadius = self.btt_Proceed.frame.size.height/2;
    self.btt_Proceed.layer.masksToBounds = YES;
    [self setDatePicker];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setDatePicker{
    //    NSDate *currentDate;
    NSCalendar *calendar;
    NSDateComponents *components;
    components.calendar = calendar;
    components.day = -0;
    
    dobDatePicker.datePickerMode = UIDatePickerModeDate;
    _txt_Date.inputView = dobDatePicker;
    [dobDatePicker addTarget:self action:@selector(handleDatePicker:) forControlEvents:UIControlEventValueChanged];
    
}
-(void)handleDatePicker:(UIDatePicker *)sender
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"dd MMM yyyy";
    _txt_Date.text = [formatter stringFromDate:dobDatePicker.date];
}


- (IBAction)click_Back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)click_Proceed:(id)sender {
}

- (IBAction)click_Policy:(id)sender {
    PrivacyPolicyViewController *privacyView = (PrivacyPolicyViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"PrivacyPolicyViewController"];
    privacyView.mode = @"Privacy";
    [self.navigationController pushViewController:privacyView animated:YES];
}

- (IBAction)click_Terms:(id)sender {
    PrivacyPolicyViewController *privacyView = (PrivacyPolicyViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"PrivacyPolicyViewController"];
    privacyView.mode = @"Terms";
    
    [self.navigationController pushViewController:privacyView animated:YES];
}
- (IBAction)click_Background:(id)sender {
    [self.txt_Date endEditing:YES];
    [self.txt_Phone endEditing:YES];
    [self.txt_Username endEditing:YES];
}

@end
