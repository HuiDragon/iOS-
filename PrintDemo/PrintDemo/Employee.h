//
//  Employee.h
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EmployeePrintDelegate <NSObject>

- (void)celebratePrintDone;

@end

@interface Employee : NSObject

+ (instancetype)shareInstance;

- (void)doPrintJob;

@property (weak, nonatomic) id<EmployeePrintDelegate> delegate;

@end
