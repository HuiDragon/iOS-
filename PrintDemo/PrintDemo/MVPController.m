//
//  MVPController.m
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import "MVPController.h"

#import "Presenter.h"
#import "MVPView.h"
#import "MVPModel.h"

@interface MVPController ()

@property (strong, nonatomic) Presenter *presenter;
@property (strong, nonatomic) MVPView *mvpView;
@property (strong, nonatomic) MVPModel *mvpModel;




@end

@implementation MVPController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.presenter = [Presenter new];
    self.mvpView = [MVPView new];
    _mvpView.frame = self.view.bounds;
    [self.view addSubview:self.mvpView];
    self.mvpModel = [MVPModel new];
    _mvpModel.content = @"line ---0---";
    
    _presenter.view = _mvpView;
    _presenter.model = _mvpModel;
    _mvpView.delegate = _presenter;
    
    [_presenter printTask];
    
}



@end
