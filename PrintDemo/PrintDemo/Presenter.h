//
//  Presenter.h
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPView.h"
#import "MVPModel.h"

@interface Presenter : NSObject<MVPViewDelegate>

@property (strong, nonatomic) MVPView *view;
@property (strong, nonatomic) MVPModel *model;

- (void)printTask;
@end
