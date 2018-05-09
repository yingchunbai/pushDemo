//
//  SecondViewController.m
//  PushDemo
//
//  Created by hxb on 2018/5/9.
//  Copyright © 2018年 yc. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"SecondViewController";
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    button.frame = CGRectMake(20, 200, 300, 100);
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 5;
    [button setBackgroundColor:[UIColor orangeColor]];
    [button setTitle:@"点我push到ThirdViewController" forState:(UIControlStateNormal)];
    [button addTarget:self action:@selector(clickMe) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button];
}
- (void)clickMe {
    
    if (self.pushBlock) {
        self.pushBlock(@"name");
    }
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
