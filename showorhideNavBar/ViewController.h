//
//  ViewController.h
//  showorhideNavBar
//
//  Created by Eternity° on 15/7/2.
//  Copyright (c) 2015年 Eternity. All rights reserved.
//

#import <UIKit/UIKit.h>
//屏幕高度
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#pragma mark - 判断是否ios7
#define IOS7 ([[[UIDevice currentDevice]systemVersion] floatValue] >= 7.0)

@interface ViewController : UIViewController

-(void)followRollingScrollView:(UIView *)scrollView;

@end

