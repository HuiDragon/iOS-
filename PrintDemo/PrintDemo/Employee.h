//
//  Employee.h
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

+ (instancetype)shareInstance;

- (void)doPrintJob;

@end
