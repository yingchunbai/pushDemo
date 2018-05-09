//
//  SecondViewController.h
//  PushDemo
//
//  Created by hxb on 2018/5/9.
//  Copyright © 2018年 yc. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^pushClick)(NSString *name);

@interface SecondViewController : UIViewController

@property (nonatomic, copy) pushClick pushBlock;

@end
