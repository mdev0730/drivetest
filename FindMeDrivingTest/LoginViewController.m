//
//  LoginViewController.m
//  FindMeDrivingTest
//
//  Created by admin on 05/05/2018.
//  Copyright © 2018 dev. All rights reserved.
//

#import "LoginViewController.h"
#import "PricingViewController.h"
#import "SignupViewController.h"
#import "FaqViewController.h"

@interface LoginViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *btt_signup;
@property (weak, nonatomic) IBOutlet UIButton *btt_faq;
@property (weak, nonatomic) IBOutlet UIButton *btt_pricing;
@property (weak, nonatomic) IBOutlet UIButton *btt_contactus;

@property (strong, nonatomic) NSArray *arrayImage;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pagecontroll;
@end

@implementation LoginViewController

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
    self.arrayImage = [NSArray arrayWithObjects:@"help1", @"help2", @"help3", @"help4", nil];
    _btt_signup.layer.cornerRadius = _btt_signup.frame.size.height/2;
    _btt_signup.layer.masksToBounds = YES;
    _btt_faq.layer.cornerRadius = _btt_faq.frame.size.height/2;
    _btt_faq.layer.masksToBounds = YES;
    _btt_pricing.layer.cornerRadius = _btt_pricing.frame.size.height/2;
    _btt_pricing.layer.masksToBounds = YES;
    _btt_contactus.layer.cornerRadius = _btt_contactus.frame.size.height/2;
    _btt_contactus.layer.masksToBounds = YES;
    
    
    for (int i = 0; i < self.arrayImage.count; i++) {
        UIImageView *page = [[UIImageView alloc] initWithFrame:CGRectMake(i*240, 0, 240, 180)];
        
        page.image = [UIImage imageNamed:self.arrayImage[i]];
        page.contentMode = UIViewContentModeScaleAspectFit;
        [self.scrollView addSubview:page];
    }
    _scrollView.contentSize = CGSizeMake(240*(self.arrayImage.count), 180);
    _scrollView.pagingEnabled = YES;
    _scrollView.delegate = self;
    
    _pagecontroll.numberOfPages = self.arrayImage.count;
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(scrollingTimer) userInfo:nil repeats:YES];

}
- (void)scrollingTimer {
    CGFloat contentOffset = _scrollView.contentOffset.x;
    // calculate next page to display
    int nextPage = (int)(contentOffset/_scrollView.frame.size.width) + 1 ;
    // if page is not 10, display it
    if( nextPage!=4 )  {
        [_scrollView scrollRectToVisible:CGRectMake(nextPage*_scrollView.frame.size.width, 0, _scrollView.frame.size.width, _scrollView.frame.size.height) animated:YES];
        _pagecontroll.currentPage=nextPage;
    } else {
        [_scrollView scrollRectToVisible:CGRectMake(0, 0, _scrollView.frame.size.width, _scrollView.frame.size.height) animated:YES];
        _pagecontroll.currentPage=0;
    }
}

- (IBAction)clickSignup:(id)sender {
    SignupViewController *pricingview = (SignupViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"SignupViewController"];
    [self.navigationController pushViewController:pricingview animated:YES];
}

- (IBAction)clickFAQ:(id)sender {
    FaqViewController *pricingview = (FaqViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"FaqViewController"];
    [self.navigationController pushViewController:pricingview animated:YES];
}

- (IBAction)clickPricing:(id)sender {
    PricingViewController *pricingview = (PricingViewController *)[self.storyboard instantiateViewControllerWithIdentifier: @"PricingViewController"];
    [self.navigationController pushViewController:pricingview animated:YES];
}

- (IBAction)clickContact:(id)sender {
}



@end
