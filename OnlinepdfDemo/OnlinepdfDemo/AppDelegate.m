//
//  AppDelegate.m
//  OnlinepdfDemo
//
//  Created by hun on 2017/8/7.
//  Copyright © 2017年 hun. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIWindow *window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _window = window;
    window.backgroundColor = [UIColor whiteColor];
    ViewController *rootView = [ViewController new];
    UINavigationController *navi = [[UINavigationController alloc]initWithRootViewController:rootView];
    window.rootViewController = navi;
    [window makeKeyAndVisible];
    
    
    
    return YES;
}



@end
