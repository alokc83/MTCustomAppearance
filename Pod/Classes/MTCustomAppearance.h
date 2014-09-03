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


-(void)customAlokCheck;



@end
