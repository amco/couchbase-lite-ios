//
//  DemoSceneDelegate.m
//  iOS Demo
//
//  Created by Lapin Valerii on 16.10.2026.
//

#import "DemoSceneDelegate.h"
#import "DemoAppDelegate.h"
#import "RootViewController.h"


@implementation DemoSceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions
{
    RootViewController* root = [[RootViewController alloc] initWithNibName: @"RootViewController" bundle: nil];
    root.navigationItem.title = @"Grocery Sync";

    UINavigationController* navigationController = [[UINavigationController alloc] initWithRootViewController: root];
    navigationController.navigationBar.tintColor = [UIColor colorWithRed: 0.6705882353 green: 0.05882352941 blue: 0.05882352941 alpha: 1];

    self.window = [[UIWindow alloc] initWithWindowScene: (UIWindowScene*)scene];
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];

    DemoAppDelegate* appDelegate = (DemoAppDelegate*)UIApplication.sharedApplication.delegate;
    [root useDatabase: appDelegate.database];
}


@end
