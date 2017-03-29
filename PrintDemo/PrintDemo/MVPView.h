//
//  MVPView.h
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MVPView;

@protocol MVPViewDelegate <NSObject>

- (void)onPrintBtnClick:(MVPView *)mvcView;

@end

@interface MVPView : UIView
@property (weak, nonatomic) id<MVPViewDelegate> delegate;

- (void)printOnView:(NSString *)content;
@end
