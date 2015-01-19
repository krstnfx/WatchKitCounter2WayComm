//
//  ViewController.h
//  WatchKitCounterDemo
//
//  Created by Thai, Kristina on 12/10/14.
//  Copyright (c) 2014 Kristina Thai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray *counterData;
@property (weak, nonatomic) IBOutlet UITableView *mainTableView;

@end

