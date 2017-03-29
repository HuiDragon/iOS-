//
//  Presenter.m
//  PrintDemo
//
//  Created by Liuguiliang on 2017/3/29.
//  Copyright © 2017年 HuiDragon. All rights reserved.
//

#import "Presenter.h"


@interface Presenter ()


@end

@implementation Presenter
- (void)printTask {
    
    NSString *printcontent = self.model.content;
    [self.view printOnView: printcontent];
}

- (void)onPrintBtnClick:(MVPView *)mvcView {
    int rand = arc4random() % 10;
    _model.content = [NSString stringWithFormat:@"%d",rand];
    
    [mvcView printOnView:_model.content];
}
@end
