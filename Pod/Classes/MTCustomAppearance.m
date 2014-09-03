//
//  MTCustomAppearance.m
//  SocialIntegration
//
//  Created by Alok on 8/29/14.
//  Copyright (c) 2014 Mapple Technologies LLC. All rights reserved.
//

#import "MTCustomAppearance.h"

@implementation MTCustomAppearance

//Custom background //Shoudl be called in viewController
-(void) setBackgoundForView:(UIView *)view withImageName:(NSString *)backgroundImageName
{
    UIColor* bgColor = [UIColor colorWithPatternImage:[UIImage imageNamed:backgroundImageName]];
    [view setBackgroundColor:bgColor];
}


#pragma mark  -
#pragma mark Custom Tab bar

// Custom Tab Bar Code
-(void)customizeTabBarWithTintColor:(UIColor *)tintColor
                   highLightedColor:(UIColor *)hightlightColor
              withSelectedImageName:(NSString *)selectedImageName
                         withInsets:(UIEdgeInsets)insetsSelecteImage
            withBackgroundImageName:(NSString *)backgroundImageName
                         withInsets:(UIEdgeInsets)insetsBackgroundImage

{
    
    [[UITabBar appearance] setSelectedImageTintColor:tintColor];
    [[UITabBar appearance] setSelectionIndicatorImage:[[UIImage imageNamed:selectedImageName] resizableImageWithCapInsets:insetsSelecteImage]];
    [[UITabBar appearance] setBackgroundImage:[[UIImage imageNamed:backgroundImageName] resizableImageWithCapInsets:insetsBackgroundImage]];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObject:hightlightColor forKey:NSForegroundColorAttributeName] forState:UIControlStateNormal];
    
}

#pragma mark  -
#pragma mark Custom Navigation bar
// Custom Nav Bar
-(void)customizeNavBarWithDefaultBarImageName:(NSString *)defaultBarImageName
                               withInsets:(UIEdgeInsets)insetsForDefaultBar
                         andLandscapeBarImageName:(NSString *)landscapeBarImageName
                               withInsets:(UIEdgeInsets)insetsForLandscapBar

{
    // Create resizable images
    UIImage *gradientImage44 = [[UIImage imageNamed:defaultBarImageName]
                                resizableImageWithCapInsets:insetsForDefaultBar];
    UIImage *gradientImage32 = [[UIImage imageNamed:landscapeBarImageName]
                                resizableImageWithCapInsets:insetsForLandscapBar];
    
    // Set the background image for *all* UINavigationBars
    [[UINavigationBar appearance] setBackgroundImage:gradientImage44
                                       forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setBackgroundImage:gradientImage32
                                       forBarMetrics:UIBarMetricsLandscapePhone];
}

-(void)customizeNavBarTitleTextColor:(UIColor *)titleTextColor
                titleTextShadowColor:(UIColor *)titleTextShadowColor
                   titleShadowOffsetSize:(CGSize)shadowOffsetSize
                   titleTextFontName:(NSString *)titleTextFontName
                   titleTextFontSize:(int)fontSize

{
    NSShadow *shadow = [[NSShadow alloc] init];
    [shadow setShadowColor:titleTextShadowColor];
    [shadow setShadowOffset:shadowOffsetSize];
    
    [[UINavigationBar appearance] setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      titleTextColor,
      NSForegroundColorAttributeName,
      shadow,
      NSShadowAttributeName,
      [UIFont fontWithName:titleTextFontName size:fontSize],
      NSFontAttributeName,
      nil]];
    
}


@end