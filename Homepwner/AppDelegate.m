//
//  AppDelegate.m
//  Homepwner
//
//  Created by Neil Vitale on 9/14/16.
//  Copyright © 2016 Neil Vitale. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Create an ItemStore
    ItemStore *itemStore = [ItemStore new];
    // Access the ItemsViewController
    ItemsViewController *ivc = (ItemsViewController *)self.window.rootViewController;
    ivc.itemStore = itemStore;
    return YES;
}



@end
