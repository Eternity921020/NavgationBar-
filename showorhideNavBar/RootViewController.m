//
//  RootViewController.m
//  showorhideNavBar
//
//  Created by Eternity° on 15/7/2.
//  Copyright (c) 2015年 Eternity. All rights reserved.
//

#import "RootViewController.h"
#import "SecondView.h"

@interface RootViewController ()<UIWebViewDelegate>
@property (retain , nonatomic)UIWebView *webView;
@end
@implementation RootViewController

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
    NSURL *url=[NSURL URLWithString:@"http://blog.csdn.net/kmyhy/"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
    [self.view addSubview:self.webView];
    
    self.navigationController.navigationBar.barTintColor=[UIColor greenColor];
    [self followRollingScrollView:self.webView];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(nextVc:)];
    self.navigationItem.rightBarButtonItem=item;
    
}

-(void)nextVc:(UIBarButtonItem *)item
{
    NSLog(@"nextVc");
    [self.navigationController pushViewController:[[SecondView alloc]init] animated:YES];
}

@end
