//
//  MaskView.h
//  sharpelayerdemo
//
//  Created by jinkai on 17/1/4.
//  Copyright © 2017年 jinkai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MaskView : UIView
/**
 创建一个背景遮罩效果，maskRect区域不遮挡，其他位置蒙板
 
 @param frame 整体遮罩区域
 @param maskRect 高亮区域
 @param radius 圆角半径
 @return 对象View
 */
-(instancetype)initWithFrame:(CGRect)frame maskRect:(CGRect)maskRect radius:(CGFloat)radius;

/**
 在一个背景遮罩上创建两个高量区域

 @param frame 整体遮罩区域
 @param maskRect1 高亮区域1
 @param radius1 圆角半径1
 @param maskRect2 高亮区域2
 @param radius2 圆角半径2
 @return 对象View
 */
-(instancetype)initWithFrame:(CGRect)frame
                   maskRect1:(CGRect)maskRect1
                     radius1:(CGFloat)radius1
                   maskRect2:(CGRect)maskRect2
                     radius2:(CGFloat)radius2;

-(instancetype)initWithFrame:(CGRect)frame
                   maskRect1:(CGRect)maskRect1
                     radius1:(CGFloat)radius1
                   maskRect2:(CGRect)maskRect2
                     radius2:(CGFloat)radius2
                   maskRect3:(CGRect)maskRect3
                     radius3:(CGFloat)radius3;
@end
