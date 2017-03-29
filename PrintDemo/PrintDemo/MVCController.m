//
//  MVCController.m
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import "MVCController.h"
#import "MVCView.h"
#import "Paper.h"

@interface MVCController ()<MVCViewDelegate>

@property (strong, nonatomic) MVCView *myView;
@property (strong, nonatomic) Paper *paper;

@end

@implementation MVCController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.myView = [MVCView new];
    self.myView.frame = self.view.bounds;
    _myView.delegate = self;
    [self.view addSubview:self.myView];
    
    self.paper = [Paper new];
    self.paper.content = @"l0 hahah";
    
    [self printPaper];
}

- (void)printPaper {
    [self.myView printOnView:self.paper];
}

- (void)onPrintBtnClick:(MVCView *)mvcView {

    int rand = arc4random() % 10;
    _paper.content = [NSString stringWithFormat:@"%d",rand];
    
    [mvcView printOnView:_paper];
}


@end
