//
//  InterfaceController.h
//  WatchKitCounterDemo WatchKit Extension
//
//  Created by Thai, Kristina on 12/10/14.
//  Copyright (c) 2014 Kristina Thai. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *counterLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *savedNotificationLabel;

@end
