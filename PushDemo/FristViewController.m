//
//  FristViewController.m
//  PushDemo
//
//  Created by hxb on 2018/5/9.
//  Copyright © 2018年 yc. All rights reserved.
//

#import "FristViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface FristViewController ()
@property (nonatomic, strong) UIButton *button;
@end

@implementation FristViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"FristViewController";
    
    _button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    _button.frame = CGRectMake(20, 200, 300, 100);
    _button.layer.masksToBounds = YES;
    _button.layer.cornerRadius = 5;
    [_button setBackgroundColor:[UIColor orangeColor]];
    [_button setTitle:@"点我present到SecondViewController" forState:(UIControlStateNormal)];
    [_button addTarget:self action:@selector(clickMe) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:_button];
}

#pragma mark - Action
- (void)clickMe {
    NSLog(@"点我");
    SecondViewController *presentVC = [SecondViewController new];
    presentVC.pushBlock = ^(NSString *name) {
        NSLog(@"name = %@", name);
        [self.navigationController pushViewController:[ThirdViewController new] animated:true];
    };
    [self presentViewController:presentVC animated:true completion:nil];
}

@end
