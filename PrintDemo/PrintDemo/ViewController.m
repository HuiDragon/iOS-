//
//  ViewController.m
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import "ViewController.h"
#import "MVCController.h"
#import "MVPController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self showMVP];
    });
}

- (void)showMVC {
    MVCController *c = [MVCController new];
    [self presentViewController:c  animated:YES completion:nil];
}

- (void)showMVP {
    MVPController *c = [MVPController new];
    [self presentViewController:c  animated:YES completion:nil];
}

@end
