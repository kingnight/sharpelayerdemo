//
//  MaskView.m
//  sharpelayerdemo
//
//  Created by jinkai on 17/1/4.
//  Copyright © 2017年 jinkai. All rights reserved.
//

#import "MaskView.h"

@interface MaskView ()
{
    CAShapeLayer *fillLayer;
}
@end

@implementation MaskView


/**
 创建一个背景遮罩效果，maskRect区域不遮挡，其他位置蒙板

 @param frame 整体蒙板区域
 @param maskRect 不遮挡区域
 @param radius 圆角半径
 @return 对象View
 */
-(instancetype)initWithFrame:(CGRect)frame maskRect:(CGRect)maskRect radius:(CGFloat)radius{
    self = [super init];
    if (self) {
        UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0,0,frame.size.width, frame.size.height)cornerRadius:0];
        UIBezierPath *circlePath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(maskRect.origin.x,maskRect.origin.y,maskRect.size.width,maskRect.size.height)cornerRadius:radius];
        [path appendPath:circlePath];
        
        [path setUsesEvenOddFillRule:YES];
        
        fillLayer = [CAShapeLayer layer];
        fillLayer.path = path.CGPath;
        fillLayer.fillRule =kCAFillRuleEvenOdd;
        fillLayer.fillColor = [UIColor blackColor].CGColor;
        fillLayer.opacity =0.8;
    
        [self.layer addSublayer:fillLayer];
    }
    return self;
}


-(instancetype)initWithFrame:(CGRect)frame
                   maskRect1:(CGRect)maskRect1
                      radius1:(CGFloat)radius1
                   maskRect2:(CGRect)maskRect2
                     radius2:(CGFloat)radius2{
    self = [super init];
    if (self) {
        UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0,0,frame.size.width, frame.size.height)cornerRadius:0];
        UIBezierPath *circlePath1 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(maskRect1.origin.x,maskRect1.origin.y,maskRect1.size.width,maskRect1.size.height)cornerRadius:radius1];
        [path appendPath:circlePath1];
        
        UIBezierPath *circlePath2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(maskRect2.origin.x,maskRect2.origin.y+maskRect2.size.height,maskRect2.size.width,maskRect2.size.height)cornerRadius:radius2];
        [path appendPath:circlePath2];
        
        [path setUsesEvenOddFillRule:YES];
        
        fillLayer = [CAShapeLayer layer];
        fillLayer.path = path.CGPath;
        fillLayer.fillRule =kCAFillRuleEvenOdd;
        fillLayer.fillColor = [UIColor blackColor].CGColor;
        fillLayer.opacity =0.8;
        
        [self.layer addSublayer:fillLayer];
    }
    return self;
}


-(instancetype)initWithFrame:(CGRect)frame
                   maskRect1:(CGRect)maskRect1
                     radius1:(CGFloat)radius1
                   maskRect2:(CGRect)maskRect2
                     radius2:(CGFloat)radius2
                   maskRect3:(CGRect)maskRect3
                     radius3:(CGFloat)radius3{
    self = [super init];
    if (self) {
        UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0,0,frame.size.width, frame.size.height)cornerRadius:0];
        UIBezierPath *circlePath1 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(maskRect1.origin.x,maskRect1.origin.y,maskRect1.size.width,maskRect1.size.height)cornerRadius:radius1];
        [path appendPath:circlePath1];
        
        UIBezierPath *circlePath2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(maskRect2.origin.x,maskRect2.origin.y+maskRect2.size.height,maskRect2.size.width,maskRect2.size.height)cornerRadius:radius2];
        [path appendPath:circlePath2];
        
        UIBezierPath *circlePath3 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(maskRect3.origin.x,maskRect3.origin.y+maskRect3.size.height,maskRect3.size.width,maskRect3.size.height)cornerRadius:radius3];
        [path appendPath:circlePath3];
        
        [path setUsesEvenOddFillRule:YES];
        
        fillLayer = [CAShapeLayer layer];
        fillLayer.path = path.CGPath;
        fillLayer.fillRule =kCAFillRuleEvenOdd;
        fillLayer.fillColor = [UIColor blackColor].CGColor;
        fillLayer.opacity =0.8;
        
        [self.layer addSublayer:fillLayer];
    }
    return self;
}

@end
