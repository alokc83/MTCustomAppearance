//
//  MTCustomAppearance.h
//  SocialIntegration
//
//  Created by Alok on 8/29/14.
//  Copyright (c) 2014 Mapple Technologies LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MTCustomAppearance : NSObject

-(void) setBackgoundForView:(UIView *)view withImageName:(NSString *)backgroundImageName;

-(void)customizeTabBarWithTintColor:(UIColor *)tintColor
                   highLightedColor:(UIColor *)hightlightColor
              withSelectedImageName:(NSString *)selectedImageName
                         withInsets:(UIEdgeInsets)insetsSelecteImage
            withBackgroundImageName:(NSString *)backgroundImageName
                         withInsets:(UIEdgeInsets)insetsBackgroundImage;



//custom navbar

-(void)customizeNavBarWithDefaultBarImageName:(NSString *)defaultBarImageName
                                   withInsets:(UIEdgeInsets)insetsForDefaultBar
                     andLandscapeBarImageName:(NSString *)landscapeBarImageName
                                   withInsets:(UIEdgeInsets)insetsForLandscapBar;

-(void)customizeNavBarTitleTextColor:(UIColor *)titleTextColor
                titleTextShadowColor:(UIColor *)titleTextShadowColor
               titleShadowOffsetSize:(CGSize)shadowOffsetSize
                   titleTextFontName:(NSString *)titleTextFontName
                   titleTextFontSize:(int)fontSize;
//UIBarButtom
//Genreric
-(void)customizeUIBarButtonWithBGImageName:(NSString *)bgImageName
                                withInsets:(UIEdgeInsets)insets
                                  forState:(UIControlState)controlState
                                barMetrics:(UIBarMetrics)barMatrices;
//Default bar matrices
-(void)customizeUIBarButtonWithBGImageNameDefault:(NSString *)bgImageNameDefault
                                       withInsets:(UIEdgeInsets)insets
                                         forState:(UIControlState)controlState;

//Landscap bar matrices
-(void)customizeUIBarButtonWithBGImageNameLandscap:(NSString *)bgImageNameLandscap
                                        withInsets:(UIEdgeInsets)insets
                                          forState:(UIControlState)controlState;

//BarButtom Title Text Customization

//ControlState Parama - user provided
-(void)customizeUIBarButtonTitleTextColor:(UIColor *)titleTextColor
                     titleTextShadowColor:(UIColor *)titleTextShadowColor
                titleTextShadowOffsetSize:(CGSize)shadowOffsetSize
                        titleTextFontName:(NSString *)titleTextFontName
                        titleTextFontSize:(int)fontSize
                                 forState:(UIControlState)controlState;

//ControlState Parama - UIControlStateNormal
-(void)customizeUIBarButtonTitleTextColor:(UIColor *)titleTextColor
                     titleTextShadowColor:(UIColor *)titleTextShadowColor
                titleTextShadowOffsetSize:(CGSize)shadowOffsetSize
                        titleTextFontName:(NSString *)titleTextFontName
                        titleTextFontSize:(int)fontSize;

//Back bar buttom
-(void)customizeUIBarBackButtonWithBGImageName:(NSString *)backBGImageName
                                    withInsets:(UIEdgeInsets)insets
                                      forState:(UIControlState)controlState
                                    barMetrics:(UIBarMetrics)barMatrices;

-(void)customizeUIBarBackButtonWithBGImageNameDefault:(NSString *)backBGImageNameDefault
                                           withInsets:(UIEdgeInsets)insets
                                             forState:(UIControlState)controlState;

-(void)customizeUIBarBackButtonWithBGImageNameLandscap:(NSString *)backBGImageNameLandscap
                                            withInsets:(UIEdgeInsets)insets
                                              forState:(UIControlState)controlState;



//Custom Slider
-(void)customizeUISliderWithMinimumTrackImageName:(NSString *)minImageName
                                       withInsets:(UIEdgeInsets)insetsforMinImage
                   andSliderMaximumTrackImageName:(NSString *)maxImageName
                                       withInsets:(UIEdgeInsets)insetsForMaxImage
                                andThumbImageName:(NSString *)thumbImage;

-(void)customizeUISliderWithMinimumTrackImageName:(NSString *)minImageName
                   andSliderMaximumTrackImageName:(NSString *)maxImageName
                                andThumbImageName:(NSString *)thumbImage;

//Custom UISegmented Control
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
                                                forBarMetrices:(UIBarMetrics)barMetrices;

@end
