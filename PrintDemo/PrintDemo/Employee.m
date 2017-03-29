//
//  Employee.m
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import "Employee.h"
#import "PrintNotification.h"

@implementation Employee
+ (instancetype)shareInstance {
    static Employee *instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [Employee new];
    });
    
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(doPrintJob) name:Notif_BeginPrintTask object:nil];
    }
    return self;
}

- (void)doPrintJob {
    
    NSLog(@"doing printing job");
    [[NSNotificationCenter defaultCenter] postNotificationName:Notif_PrintTaskDone object:nil];
}
@end
