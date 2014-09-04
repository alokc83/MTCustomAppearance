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


#pragma mark -
#pragma mark UIBarButon
-(void)customizeUIBarButtonWithBGImageName:(NSString *)bgImageName
                                withInsets:(UIEdgeInsets)insets
                                  forState:(UIControlState)controlState
                                barMetrics:(UIBarMetrics)barMatrices
{
    UIImage *customButton = [[UIImage imageNamed:bgImageName]
                         resizableImageWithCapInsets:insets];
    [[UIBarButtonItem appearance] setBackgroundImage:customButton forState:controlState
                                          barMetrics:barMatrices];
    
    
}

-(void)customizeUIBarButtonWithBGImageNameDefault:(NSString *)bgImageNameDefault
                                       withInsets:(UIEdgeInsets)insets
                                         forState:(UIControlState)controlState
{
    [self customizeUIBarButtonWithBGImageName:bgImageNameDefault
                                   withInsets:insets
                                     forState:controlState
                                   barMetrics:UIBarMetricsDefault];
}

-(void)customizeUIBarButtonWithBGImageNameLandscap:(NSString *)bgImageNameLandscap
                                       withInsets:(UIEdgeInsets)insets
                                         forState:(UIControlState)controlState
{
    [self customizeUIBarButtonWithBGImageName:bgImageNameLandscap
                                   withInsets:insets
                                     forState:controlState
                                   barMetrics:UIBarMetricsLandscapePhone];
}

//This work for back button as well
-(void)customizeUIBarButtonTitleTextColor:(UIColor *)titleTextColor
                     titleTextShadowColor:(UIColor *)titleTextShadowColor
                titleTextShadowOffsetSize:(CGSize)shadowOffsetSize
                        titleTextFontName:(NSString *)titleTextFontName
                        titleTextFontSize:(int)fontSize
                                 forState:(UIControlState)controlState
{
    NSShadow *shadow = [[NSShadow alloc] init];
    [shadow setShadowColor:titleTextShadowColor];
    [shadow setShadowOffset:shadowOffsetSize];
    
    [[UIBarButtonItem appearance] setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:titleTextColor,
      NSForegroundColorAttributeName,
      shadow,
      NSShadowAttributeName,
      [UIFont fontWithName:titleTextFontName size:fontSize],
      NSFontAttributeName,
      nil]forState:controlState];
    
}

-(void)customizeUIBarButtonTitleTextColor:(UIColor *)titleTextColor
                     titleTextShadowColor:(UIColor *)titleTextShadowColor
                titleTextShadowOffsetSize:(CGSize)shadowOffsetSize
                        titleTextFontName:(NSString *)titleTextFontName
                        titleTextFontSize:(int)fontSize
{
    [self customizeUIBarButtonTitleTextColor:titleTextColor titleTextShadowColor:titleTextShadowColor titleTextShadowOffsetSize:shadowOffsetSize titleTextFontName:titleTextFontName titleTextFontSize:fontSize forState:UIControlStateNormal];
}


#pragma mark Back Button
-(void)customizeUIBarBackButtonWithBGImageName:(NSString *)backBGImageName
                                withInsets:(UIEdgeInsets)insets
                                  forState:(UIControlState)controlState
                                barMetrics:(UIBarMetrics)barMatrices
{
    UIImage *customButton = [[UIImage imageNamed:backBGImageName]
                             resizableImageWithCapInsets:insets];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:customButton forState:controlState
                                          barMetrics:barMatrices];
    
    
}

-(void)customizeUIBarBackButtonWithBGImageNameDefault:(NSString *)backBGImageNameDefault
                                       withInsets:(UIEdgeInsets)insets
                                         forState:(UIControlState)controlState
{
    [self customizeUIBarBackButtonWithBGImageName:backBGImageNameDefault
                                   withInsets:insets
                                     forState:controlState
                                   barMetrics:UIBarMetricsDefault];
}

-(void)customizeUIBarBackButtonWithBGImageNameLandscap:(NSString *)backBGImageNameLandscap
                                        withInsets:(UIEdgeInsets)insets
                                          forState:(UIControlState)controlState
{
    [self customizeUIBarBackButtonWithBGImageName:backBGImageNameLandscap
                                   withInsets:insets
                                     forState:controlState
                                   barMetrics:UIBarMetricsLandscapePhone];
}

#pragma mark -
#pragma mark Customized UISlider
-(void)customizeUISliderWithMinimumTrackImageName:(NSString *)minImageName
                              withInsets:(UIEdgeInsets)insetsforMinImage
               andSliderMaximumTrackImageName:(NSString *)maxImageName
                              withInsets:(UIEdgeInsets)insetsForMaxImage
                       andThumbImageName:(NSString *)thumbImage
{
    [[UISlider appearance] setMinimumTrackImage:[[UIImage imageNamed:minImageName] resizableImageWithCapInsets:insetsforMinImage] forState:UIControlStateNormal];
    [[UISlider appearance] setMaximumTrackImage:[[UIImage imageNamed:maxImageName] resizableImageWithCapInsets:insetsForMaxImage]forState:UIControlStateNormal];
    [[UISlider appearance] setThumbImage:[UIImage imageNamed:thumbImage] forState:UIControlStateNormal];
    
}

-(void)customizeUISliderWithMinimumTrackImageName:(NSString *)minImageName
                   andSliderMaximumTrackImageName:(NSString *)maxImageName
                                andThumbImageName:(NSString *)thumbImage
{

    UIImage *minTrackImage = [[UIImage imageNamed:minImageName] resizableImageWithCapInsets:UIEdgeInsetsZero];
    UIImage *maxTrackImage = [[UIImage imageNamed:maxImageName] resizableImageWithCapInsets:UIEdgeInsetsZero];

    [[UISlider appearance] setMinimumTrackImage:minTrackImage forState:UIControlStateNormal];
    [[UISlider appearance] setMaximumTrackImage:maxTrackImage forState:UIControlStateNormal];
    [[UISlider appearance] setThumbImage:[UIImage imageNamed:thumbImage] forState:UIControlStateNormal];
}


#pragma mark -
#pragma mark Custom UISegmentedControl

-(void)customizeUISegmentedControlWithSegmentSelectedImageName:(NSString *)selected
                                          andInsetsForSelected:(UIEdgeInsets)insetsForSelected
                                withSegmentUnselectedImageName:(NSString *)unselected
                                        andInsetsForUnselected:(UIEdgeInsets)insetsForUnselected
                        withSegmentSelectedUnselectedImageName:(NSString *)selectedUnselected
                                andInsetsForSelectedUnselected:(UIEdgeInsets)insetsForSelectedUnselected
                        withSegmentUnselectedSelectedImageName:(NSString *)unselectedSelected
                                andInsetsForUnselectedSelected:(UIEdgeInsets)insetsForUnselectedSelected
                      withSegmentUnselectedUnselectedImageName:(NSString *)unselectedUnselected
                              andInsetsForUnselectedUnselected:(UIEdgeInsets)insetsForUnselectedUnselected
                                                forBarMetrices:(UIBarMetrics)barMetrices
{
    UIImage *selectedImage = [[UIImage imageNamed:selected] resizableImageWithCapInsets:insetsForSelected];
    UIImage *unselectedImage = [[UIImage imageNamed:unselected] resizableImageWithCapInsets:insetsForUnselected];
    UIImage *selectedUnselectedImage = [[UIImage imageNamed:selectedUnselected] resizableImageWithCapInsets:insetsForSelectedUnselected];
    UIImage *unselectedSelectedImage = [[UIImage imageNamed:unselectedSelected] resizableImageWithCapInsets:insetsForUnselectedSelected];
    UIImage *unselectedUnselectedImage = [[UIImage imageNamed:unselectedUnselected] resizableImageWithCapInsets:insetsForUnselectedUnselected];
    
    [[UISegmentedControl appearance] setBackgroundImage:selectedImage forState:UIControlStateSelected barMetrics:barMetrices];
    [[UISegmentedControl appearance] setBackgroundImage:unselectedImage forState:UIControlStateNormal barMetrics:barMetrices];
    
    //devider image between segmentes
    [[UISegmentedControl appearance] setDividerImage:selectedUnselectedImage forLeftSegmentState:UIControlStateSelected rightSegmentState:UIControlStateNormal barMetrics:barMetrices];
    [[UISegmentedControl appearance] setDividerImage:unselectedSelectedImage forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateSelected barMetrics:barMetrices];
    [[UISegmentedControl appearance] setDividerImage:unselectedUnselectedImage forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal barMetrics:barMetrices];
    
}

@end