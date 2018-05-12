//
//  FaqViewController.m
//  FindMeDrivingTest
//
//  Created by admin on 12/05/2018.
//  Copyright © 2018 dev. All rights reserved.
//

#import "FaqViewController.h"
#import "FaqDetailViewController.h"

@interface FaqViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btt_faq1;
@property (weak, nonatomic) IBOutlet UIButton *btt_faq2;
@property (weak, nonatomic) IBOutlet UIButton *btt_faq3;
@property (weak, nonatomic) IBOutlet UIButton *btt_faq4;
@property (weak, nonatomic) IBOutlet UIButton *btt_faq5;
@property (weak, nonatomic) IBOutlet UIButton *btt_faq6;
@property (weak, nonatomic) IBOutlet UIButton *btt_faq7;
@property (weak, nonatomic) IBOutlet UIButton *btt_faq8;
@property (weak, nonatomic) IBOutlet UIButton *btt_faq9;
@property (weak, nonatomic) IBOutlet UIButton *btt_faq10;
@property (weak, nonatomic) IBOutlet UIButton *btt_ask;
@property (weak, nonatomic) IBOutlet UIButton *btt_account;
@property (strong, nonatomic) NSArray *arrayTitle;
@end

@implementation FaqViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.arrayTitle = [NSArray arrayWithObjects:
                       @"Is there a driving test cancellation list?",
                       @"How do you check for cancelled driving tests?",
                       @"How do I receive notification for Find Me A Driving Test?",
                       @"What information is needed to find a cancellation?",
                       @"What happens if I don’t go premium?",
                       @"£17.99? Is that it?",
                       @"What payment system do you use?",
                       @"What happens if want to cancel my Find Me A Driving Test?",
                       @"How Can I Upgrade to the Premium Version?",
                       @"How do I select which test center to search for?",
                       nil];
    
    [self initUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)initUI {
    _btt_faq1.layer.cornerRadius = _btt_faq1.frame.size.height/2;
    _btt_faq1.layer.masksToBounds = YES;
    [_btt_faq1 setTitle:[self.arrayTitle objectAtIndex:0] forState:UIControlStateNormal];
    _btt_faq2.layer.cornerRadius = _btt_faq2.frame.size.height/2;
    _btt_faq2.layer.masksToBounds = YES;
    [_btt_faq2 setTitle:[self.arrayTitle objectAtIndex:1] forState:UIControlStateNormal];
    _btt_faq3.layer.cornerRadius = _btt_faq3.frame.size.height/2;
    _btt_faq3.layer.masksToBounds = YES;
    [_btt_faq3 setTitle:[self.arrayTitle objectAtIndex:2] forState:UIControlStateNormal];
    _btt_faq4.layer.cornerRadius = _btt_faq4.frame.size.height/2;
    _btt_faq4.layer.masksToBounds = YES;
    [_btt_faq4 setTitle:[self.arrayTitle objectAtIndex:3] forState:UIControlStateNormal];
    _btt_faq5.layer.cornerRadius = _btt_faq5.frame.size.height/2;
    _btt_faq5.layer.masksToBounds = YES;
    [_btt_faq5 setTitle:[self.arrayTitle objectAtIndex:4] forState:UIControlStateNormal];
    _btt_faq6.layer.cornerRadius = _btt_faq6.frame.size.height/2;
    _btt_faq6.layer.masksToBounds = YES;
    [_btt_faq6 setTitle:[self.arrayTitle objectAtIndex:5] forState:UIControlStateNormal];
    _btt_faq7.layer.cornerRadius = _btt_faq7.frame.size.height/2;
    _btt_faq7.layer.masksToBounds = YES;
    [_btt_faq7 setTitle:[self.arrayTitle objectAtIndex:6] forState:UIControlStateNormal];
    _btt_faq8.layer.cornerRadius = _btt_faq8.frame.size.height/2;
    _btt_faq8.layer.masksToBounds = YES;
    [_btt_faq8 setTitle:[self.arrayTitle objectAtIndex:7] forState:UIControlStateNormal];
    _btt_faq9.layer.cornerRadius = _btt_faq9.frame.size.height/2;
    _btt_faq9.layer.masksToBounds = YES;
    [_btt_faq9 setTitle:[self.arrayTitle objectAtIndex:8] forState:UIControlStateNormal];
    _btt_faq10.layer.cornerRadius = _btt_faq10.frame.size.height/2;
    _btt_faq10.layer.masksToBounds = YES;
    [_btt_faq10 setTitle:[self.arrayTitle objectAtIndex:9] forState:UIControlStateNormal];
    
    _btt_ask.layer.cornerRadius = _btt_ask.frame.size.height/2;
    _btt_ask.layer.masksToBounds = YES;
    _btt_account.layer.cornerRadius = _btt_account.frame.size.height/2;
    _btt_account.layer.masksToBounds = YES;
}

- (IBAction)click_back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)click_FAQ1:(id)sender {
    FaqDetailViewController *_faqViewController = (FaqDetailViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"FaqDetailViewController"];
    _faqViewController.faq_index = 0;
    _faqViewController.faq_title = [self.arrayTitle objectAtIndex:0];
    [self.navigationController pushViewController:_faqViewController animated:YES];
}
- (IBAction)click_FAQ2:(id)sender {
    FaqDetailViewController *_faqViewController = (FaqDetailViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"FaqDetailViewController"];
    _faqViewController.faq_index = 1;
    _faqViewController.faq_title = [self.arrayTitle objectAtIndex:1];
    [self.navigationController pushViewController:_faqViewController animated:YES];
}
- (IBAction)click_FAQ3:(id)sender {
    FaqDetailViewController *_faqViewController = (FaqDetailViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"FaqDetailViewController"];
    _faqViewController.faq_index = 2;
    _faqViewController.faq_title = [self.arrayTitle objectAtIndex:2];
    [self.navigationController pushViewController:_faqViewController animated:YES];
}
- (IBAction)click_FAQ4:(id)sender {
    FaqDetailViewController *_faqViewController = (FaqDetailViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"FaqDetailViewController"];
    _faqViewController.faq_index = 3;
    _faqViewController.faq_title = [self.arrayTitle objectAtIndex:3];
    [self.navigationController pushViewController:_faqViewController animated:YES];
}
- (IBAction)click_FAQ5:(id)sender {
    FaqDetailViewController *_faqViewController = (FaqDetailViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"FaqDetailViewController"];
    _faqViewController.faq_index = 4;
    _faqViewController.faq_title = [self.arrayTitle objectAtIndex:4];
    [self.navigationController pushViewController:_faqViewController animated:YES];
}
- (IBAction)click_FAQ6:(id)sender {
    FaqDetailViewController *_faqViewController = (FaqDetailViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"FaqDetailViewController"];
    _faqViewController.faq_index = 5;
    _faqViewController.faq_title = [self.arrayTitle objectAtIndex:5];
    [self.navigationController pushViewController:_faqViewController animated:YES];
}
- (IBAction)click_FAQ7:(id)sender {
    FaqDetailViewController *_faqViewController = (FaqDetailViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"FaqDetailViewController"];
    _faqViewController.faq_index = 6;
    _faqViewController.faq_title = [self.arrayTitle objectAtIndex:6];
    [self.navigationController pushViewController:_faqViewController animated:YES];
}
- (IBAction)click_FAQ8:(id)sender {
    FaqDetailViewController *_faqViewController = (FaqDetailViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"FaqDetailViewController"];
    _faqViewController.faq_index = 7;
    _faqViewController.faq_title = [self.arrayTitle objectAtIndex:7];
    [self.navigationController pushViewController:_faqViewController animated:YES];
}
- (IBAction)click_FAQ9:(id)sender {
    FaqDetailViewController *_faqViewController = (FaqDetailViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"FaqDetailViewController"];
    _faqViewController.faq_index = 8;
    _faqViewController.faq_title = [self.arrayTitle objectAtIndex:8];
    [self.navigationController pushViewController:_faqViewController animated:YES];
}
- (IBAction)click_FAQ10:(id)sender {
    FaqDetailViewController *_faqViewController = (FaqDetailViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"FaqDetailViewController"];
    _faqViewController.faq_index = 9;
    _faqViewController.faq_title = [self.arrayTitle objectAtIndex:9];
    [self.navigationController pushViewController:_faqViewController animated:YES];
}
- (IBAction)click_ASK:(id)sender {
}
- (IBAction)click_Account:(id)sender {
}








@end
