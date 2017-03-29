//
//  ViewController.m
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import "ViewController.h"
#import "Manager.h"
#import "Employee.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [Employee shareInstance];
    [[Manager shareInstance] beginPrintTask];}


@end
