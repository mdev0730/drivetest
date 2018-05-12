//
//  FaqDetailViewController.m
//  FindMeDrivingTest
//
//  Created by admin on 12/05/2018.
//  Copyright © 2018 dev. All rights reserved.
//

#import "FaqDetailViewController.h"

@interface FaqDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lb_Title;
@property (weak, nonatomic) IBOutlet UITextView *txt_Content;
@property (strong, nonatomic) NSArray *arrayContent;

@end

@implementation FaqDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.arrayContent = [NSArray arrayWithObjects:
                         @"Unfortunately not. There currently is no driving test cancellation list available to the general public and the DVA has made it clear that they do not intend to release a driving test cancellation list. Therefore the best solution is to look yourself or use our service to continually check for you. ",
                         @"We simply check for cancelled driving tests by searching the DVA database thousands of times a day. It’s as simple as that!",
                         @"We offer two types of notifications, email and SMS messaging. With our full version you can reply to the SMS message ‘book’ and we will automatically change it for you. What could be easier!?",
                         @"To find you the earliest cancellation all we need is your driving licenses number and your booking reference number or theory test certification number.",
                         @"Once you sign up there is no commitment for you to go premium; we offer a free trial so you can test it out free of charge! However, it might be worth looking at the cool features we offer with the full version just so you get on the road as soon as possible!",
                         @"It sure is! What’s more, if you are unlucky enough to fail next time or the time after that, you can keep on using the service so you know that we always have your back!",
                         @"We use Paypal for our transactions.  This offers great flexibility as it is quick, easy and secure so you know your money is always safe!",
                         @"Although we try to make every customer happy if you are not happy with the services and would like to cancel you can do so by emailing info@findmeadrivingtest.co.uk or request a callback.",
                         @"Simply go to ‘My Account’. ",
                         @"You don’t need to, we search the driving school you have booked your test at.",
                         nil];
    [self.lb_Title setText:_faq_title];
    [self.txt_Content setText:[self.arrayContent objectAtIndex:_faq_index]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click_Back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
