//
//  MTAppDelegate.m
//  MTCustomAppearance
//
//  Created by CocoaPods on 09/03/2014.
//  Copyright (c) 2014 Alok Choudhary. All rights reserved.
//

#import "MTAppDelegate.h"
#import <MTCustomAppearance.h>

@implementation MTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self customizedAppearance];
    
    
    return YES;
}

-(void)customizedAppearance
{
    //custom appearance
    MTCustomAppearance *customUI = [[MTCustomAppearance alloc] init];
    [customUI customizeTabBarWithTintColor:[UIColor whiteColor] highLightedColor:[UIColor blueColor] withSelectedImageName:@"tab_select.png" withInsets:UIEdgeInsetsMake(0, 0, 0, 0) withBackgroundImageName:@"tab_bg.png" withInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    
    [customUI customizeNavBarWithDefaultBarImageName:@"tab_bg.png" withInsets:UIEdgeInsetsMake(0, 0, 0, 0) andLandscapeBarImageName:@"tab_bg.png" withInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    
    [customUI customizeNavBarTitleTextColor:[UIColor greenColor] titleTextShadowColor:[UIColor blackColor] titleShadowOffsetSize:CGSizeMake(0, 1) titleTextFontName:@"AmericanTypewriter" titleTextFontSize:16];
    
    [customUI customizeUIBarButtonWithBGImageName:@"button_textured_30" withInsets:UIEdgeInsetsMake(0, 5, 0, 5) forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [customUI customizeUIBarButtonTitleTextColor:[UIColor redColor] titleTextShadowColor:[UIColor whiteColor] titleTextShadowOffsetSize:CGSizeMake(0, 1) titleTextFontName:@"AmericanTypewriter" titleTextFontSize:14];
    [customUI customizeUIBarButtonTitleTextColor:[UIColor blackColor] titleTextShadowColor:[UIColor redColor] titleTextShadowOffsetSize:CGSizeMake(0, 1) titleTextFontName:@"AmericanTypewriter" titleTextFontSize:14 forState:UIControlStateHighlighted];
    [customUI customizeUIBarBackButtonWithBGImageNameDefault:@"button_back_textured_30" withInsets:UIEdgeInsetsMake(0, 13, 0, 5) forState:UIControlStateNormal];
    
    // [customUI customizeUISliderWithMinimumTrackImageName:@"slider_minimum.png" withInsets:UIEdgeInsetsMake(0, 5, 0, 0) andSliderMaximumTrackImageName:@"slider_maximum.png" withInsets:UIEdgeInsetsMake(0, 5, 0, 0) andThumbImageName:@"thumb.png"];
    [customUI customizeUISliderWithMinimumTrackImageName:@"slider_minimum.png" withInsets:UIEdgeInsetsMake(0, 5, 0, 0) andSliderMaximumTrackImageName:@"slider_maximum.png" withInsets:UIEdgeInsetsMake(0, 0, 0, 5) andThumbImageName:@"thumb.png"];
    
    [customUI customizeUISegmentedControlWithSegmentSelectedImageName:@"segcontrol_sel.png" andInsetsForSelected:UIEdgeInsetsMake(0, 15, 0, 15) withSegmentUnselectedImageName:@"segcontrol_uns.png" andInsetsForUnselected:UIEdgeInsetsMake(0, 15, 0, 15) withSegmentSelectedUnselectedImageName:@"segcontrol_sel-uns.png" andInsetsForSelectedUnselected:UIEdgeInsetsZero withSegmentUnselectedSelectedImageName:@"segcontrol_uns-sel.png" andInsetsForUnselectedSelected:UIEdgeInsetsZero withSegmentUnselectedUnselectedImageName:@"segcontrol_uns-uns.png" andInsetsForUnselectedUnselected:UIEdgeInsetsZero forBarMetrices:UIBarMetricsDefault];
    
    // [customUI customizeUISwitchWithOnTintColor:[UIColor colorWithRed:0.0 green:175.0/255.0 blue:176.0/255.0 alpha:1.0] offTintColor:[UIColor colorWithRed:1.000 green:.989 blue:0.753 alpha:1.0] andThumbTintColor:[UIColor colorWithRed:0.211 green:0.550 blue:1 alpha:1.0] withOnImageName:@"yesSwitch" andOffImageName:@"noSwitch"];
    [customUI customizeUISwitchWithOnTintColor:[UIColor colorWithRed:0.0 green:175.0/255.0 blue:176.0/255.0 alpha:1.0] offTintColor:[UIColor colorWithRed:1.000 green:.989 blue:0.753 alpha:1.0] andThumbTintColor:[UIColor colorWithRed:0.211 green:0.550 blue:.550 alpha:1.0] withOnImageName:@"yesSwitch" andOffImageName:@"noSwitch"];
    
    [customUI customizeUIStepperWithTintColor:[UIColor blackColor]];
    
    [customUI customizeUIProgressViewWithProgressTintColor:[UIColor greenColor] andTrackTintColor:[UIColor grayColor]];
    
    [customUI customizeUIPageControlWithCurrentPageIndicatorTint:[UIColor greenColor] andPageIndicatorTint:[UIColor grayColor]];
}

							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
