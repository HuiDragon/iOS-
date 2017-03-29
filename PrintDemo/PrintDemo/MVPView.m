//
//  MVPView.m
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import "MVPView.h"

@interface MVPView ()

@property (strong, nonatomic) UILabel *lbContent;
@property (strong, nonatomic) UIButton *btnPrint;


@end

@implementation MVPView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.lbContent = [UILabel new];
        self.backgroundColor = [UIColor lightGrayColor];
        [self addSubview:self.lbContent];
        _lbContent.frame = CGRectMake(0, 100, 300, 30);
        _lbContent.textAlignment = NSTextAlignmentCenter;
        _lbContent.textColor = [UIColor blueColor];
        
        self.btnPrint = [UIButton new];
        _btnPrint.frame = CGRectMake(100, 300, 100, 50);
        [_btnPrint setBackgroundColor:[UIColor blueColor]];
        [_btnPrint setTitle:@"Print" forState:UIControlStateNormal];
        [_btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_btnPrint];

    }
    return self;
}

- (void)printOnView:(NSString *)content {

    _lbContent.text = content;
}

- (void)onPrintClick {
    
    if (_delegate) {
        [_delegate onPrintBtnClick:self];
    }
}

@end
