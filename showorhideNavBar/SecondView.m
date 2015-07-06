//
//  SecondView.m
//  showorhideNavBar
//
//  Created by Eternity° on 15/7/2.
//  Copyright (c) 2015年 Eternity. All rights reserved.
//

#import "SecondView.h"
@interface SecondView ()<UIWebViewDelegate>
@property (retain , nonatomic)UIWebView *webView;
@end
@implementation SecondView
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initView];
    
}
-(void)initView
{
    self.title = @"WebView";
    
    CGRect frame = self.view.bounds;
    self.webView = [[UIWebView alloc] initWithFrame:frame];
    self.webView.delegate=self;
    NSURL *url=[NSURL URLWithString:@"http://news.baidu.com/"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
    [self.view addSubview:self.webView];
    
    self.navigationController.navigationBar.barTintColor=[UIColor greenColor];
    [self followRollingScrollView:self.webView];
    
}

@end
