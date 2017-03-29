//
//  MVCView.m
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import "MVCView.h"

@interface MVCView ()

@property (strong, nonatomic) UIButton *btnPrint;

@end

@implementation MVCView


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor lightGrayColor];
        self.btnPrint = [UIButton new];
        _btnPrint.frame = CGRectMake(100, 100, 100, 50);
        [_btnPrint setBackgroundColor:[UIColor blueColor]];
        [_btnPrint setTitle:@"Print" forState:UIControlStateNormal];
        [_btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_btnPrint];
    }
    return self;
}

- (void)printOnView:(Paper *)paper {

    NSLog(@"Printing paper content: %@",paper.content);
}

- (void)onPrintClick {

    if (_delegate) {
        [_delegate onPrintBtnClick:self];
    }
}

@end
