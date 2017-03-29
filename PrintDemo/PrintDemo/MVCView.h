//
//  MVCView.h
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MVCView;
#import "Paper.h"

@protocol MVCViewDelegate <NSObject>

- (void)onPrintBtnClick:(MVCView *)mvcView;

@end

@interface MVCView : UIView

- (void)printOnView:(Paper *)paper;

@property (weak, nonatomic) id<MVCViewDelegate> delegate;

@end
