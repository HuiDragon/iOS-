//
//  Manager.h
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manager : NSObject
+ (instancetype)shareInstance;

- (void)celebratePrintDone;

- (void)beginPrintTask;
@end
