//
//  Employee.m
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import "Employee.h"

@implementation Employee
+ (instancetype)shareInstance {
    static Employee *instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [Employee new];
    });
    
    return instance;
}

- (void)doPrintJob {
    
    NSLog(@"doing printing job");
    if (_delegate) {
        [_delegate celebratePrintDone];
    }
}
@end
