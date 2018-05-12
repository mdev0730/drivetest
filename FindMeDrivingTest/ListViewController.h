//
//  ListViewController.h
//  FindMeDrivingTest
//
//  Created by admin on 06/05/2018.
//  Copyright © 2018 dev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    NSArray *arrList;
}
@end
