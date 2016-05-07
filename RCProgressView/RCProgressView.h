//
//  RCProgressView.h
//  XCMao
//
//  Created by WuQingMing on 16/4/25.
//  Copyright © 2016年 xinying. All rights reserved.
//
//round corner progress View(圆角进度条)

#import <UIKit/UIKit.h>

@interface RCProgressView : UIView

/** 设置进度*/
@property (nonatomic) CGFloat progress;

/**进度条颜色*/
@property (nonatomic, strong) UIColor *progressBarColor;

/**进度条背景色*/
@property (nonatomic, strong) UIColor *progressBgColor;

@end
