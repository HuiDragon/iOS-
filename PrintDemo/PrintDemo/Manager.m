//
//  Manager.m
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import "Manager.h"
#import "Employee.h"

@interface Manager ()<EmployeePrintDelegate>

@end

@implementation Manager
+ (instancetype)shareInstance {
    static Manager *instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [Manager new];
    });
    
    return instance;
}



- (void)beginPrintTask {
    [Employee shareInstance].delegate = self;
    [[Employee shareInstance] doPrintJob];
}

#pragma mark- EmployeePrintDelegate

- (void)celebratePrintDone {
    NSLog(@"celebrate print done");
}

@end
