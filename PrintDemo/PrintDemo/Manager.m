//
//  Manager.m
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import "Manager.h"
#import "PrintNotification.h"


@implementation Manager
+ (instancetype)shareInstance {
    static Manager *instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [Manager new];
    });
    
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(celebratePrintDone) name:Notif_PrintTaskDone object:nil];
    }
    return self;
}


- (void)beginPrintTask {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:Notif_BeginPrintTask object:nil];
    
}

- (void)celebratePrintDone {
    NSLog(@"celebrate print done");
}

@end
