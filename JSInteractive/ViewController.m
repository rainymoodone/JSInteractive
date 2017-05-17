//
//  ViewController.m
//  JSInteractive
//
//  Created by jack on 2017/3/29.
//  Copyright © 2017年 jieWang. All rights reserved.
//

#import "ViewController.h"
#import "UIWebViewController.h"
#import "WKWebViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *wkWebViewButton;

@end

@implementation ViewController

#pragma mark - action 

- (void)tapUIWebView {
    [self.navigationController pushViewController:[[UIWebViewController alloc] init] animated:YES];
}

- (void)tapWKWebView {
    [self.navigationController pushViewController:[[WKWebViewController alloc] init] animated:YES];
}

#pragma mark - override

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *uiWebViewButton = [UIButton buttonWithType:UIButtonTypeCustom];
    uiWebViewButton.frame = CGRectMake(50, 100, 300, 50);
    uiWebViewButton.backgroundColor = [UIColor yellowColor];
    [uiWebViewButton setTitle:@"UIWebViewButton" forState:UIControlStateNormal];
    [uiWebViewButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [uiWebViewButton addTarget:self action:@selector(tapUIWebView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:uiWebViewButton];
    
    UIButton *wkWebViewButton = [UIButton buttonWithType:UIButtonTypeCustom];
    wkWebViewButton.frame = CGRectMake(50, 300, 300, 50);

    wkWebViewButton.backgroundColor = [UIColor yellowColor];
    [wkWebViewButton setTitle:@"WKWebViewButton" forState:UIControlStateNormal];
    [wkWebViewButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [wkWebViewButton addTarget:self action:@selector(tapWKWebView) forControlEvents:UIControlEventTouchUpInside];
    _wkWebViewButton = wkWebViewButton;
    [self.view addSubview:wkWebViewButton];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
