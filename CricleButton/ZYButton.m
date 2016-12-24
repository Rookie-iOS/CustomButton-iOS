//
//  ZYButton.m
//  CricleButton
//
//  Created by Yanice on 2016/12/24.
//  Copyright © 2016年 Yanice. All rights reserved.
//

#import "ZYButton.h"

@implementation ZYButton

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {

    UIButton *btn = (UIButton *)[super hitTest:point withEvent:event];
    CGPoint tpoint = [self convertPoint:point toView:btn];
    CGFloat distance = sqrt(pow(tpoint.x-btn.bounds.size.width/2, 2)+pow(tpoint.y-btn.bounds.size.width/2, 2));
    if (distance<btn.bounds.size.width/2) {
        return [super hitTest:point withEvent:event];
    }
    return nil;
}

@end
