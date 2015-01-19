//
//  AppDelegate.m
//  WatchKitCounterDemo
//
//  Created by Thai, Kristina on 12/10/14.
//  Copyright (c) 2014 Kristina Thai. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()
@property (strong, nonatomic) NSMutableArray *tempCounterData;
@end

@implementation AppDelegate

- (void)application:(UIApplication *)application handleWatchKitExtensionRequest:(NSDictionary *)userInfo reply:(void(^)(NSDictionary *replyInfo))reply {
    
    NSString *counterValue = [userInfo objectForKey:@"counterValue"];
    NSDictionary *replyDict = @{@"response": counterValue};
    
    reply(replyDict);

    if (!self.tempCounterData) {
        self.tempCounterData = [[NSMutableArray alloc] init];
    }
    
    [self.tempCounterData addObject:counterValue];
    
    //Add the new counter value and reload the table view
    AppDelegate *tmpDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    ViewController *vc = (ViewController *)((UINavigationController*)tmpDelegate.window.rootViewController).visibleViewController;
    
    vc.counterData = self.tempCounterData;
    [vc.mainTableView reloadData];

}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

@end
