//
//  ViewController.m
//  RCProgressDemo
//
//  Created by WuQingMing on 16/5/7.
//  Copyright © 2016年 WuQingMing. All rights reserved.
//

#import "ViewController.h"
#import "RCProgressView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RCProgressView *progressView = [[RCProgressView alloc] initWithFrame:CGRectMake(50, 100, 200, 20)];
    progressView.progressBgColor = [UIColor lightGrayColor];
    progressView.progressBarColor = [UIColor greenColor];
    [progressView setProgress:0.6];
    
    [self.view addSubview:progressView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
