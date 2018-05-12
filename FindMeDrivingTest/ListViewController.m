//
//  ListViewController.m
//  FindMeDrivingTest
//
//  Created by admin on 06/05/2018.
//  Copyright © 2018 dev. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableList;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self tempArrayData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tempArrayData {
    arrList = [NSArray arrayWithObjects:@"2018-05-9",@"2018-05-10",@"2018-05-11",@"2018-05-12",@"2018-05-13",@"2018-05-14",@"2018-05-15",nil];
}

#pragma mark TableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrList.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *Cell = [self.tableList dequeueReusableCellWithIdentifier:@"listCell"];
    UILabel *lblDate = (UILabel *)[Cell viewWithTag:111];
    UILabel *lblTime = (UILabel *)[Cell viewWithTag:112];
    
    [lblDate setText:[arrList objectAtIndex:indexPath.row]];
    
    return Cell;
    
}
@end
