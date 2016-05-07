//
//  RCProgressView.m
//  XCMao
//
//  Created by WuQingMing on 16/4/25.
//  Copyright © 2016年 xinying. All rights reserved.
//

#import "RCProgressView.h"

@implementation RCProgressView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.progressBarColor = [UIColor orangeColor];
        self.progressBgColor = [UIColor colorWithRed:240/255.0 green:220/255.0 blue:200/255.0 alpha:1];
    }
    return self;
}

- (void)setProgress:(CGFloat)progress {
    _progress = progress;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self drawProgressBackground:context inRect:rect];
    
    if (self.progress > 0) {
        [self drawProgress:context withFrame: rect];
    }
}

- (void)drawProgressBackground:(CGContextRef)context inRect:(CGRect)rect {
    CGContextSaveGState(context);
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:rect.size.height/2];
    CGContextSetFillColorWithColor(context, self.progressBgColor.CGColor);
    [roundedRect fill];
    
    UIBezierPath *roundedClipPath = [UIBezierPath bezierPathWithRect:rect];
    [roundedClipPath appendPath:roundedRect];
    [roundedRect addClip];
}

- (void)drawProgress:(CGContextRef)context withFrame:(CGRect)frame {
    CGRect drawRect = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width * self.progress, frame.size.height);
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:drawRect byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomLeft cornerRadii: CGSizeMake(drawRect.size.height/2, drawRect.size.height/2)];
    CGContextSetFillColorWithColor(context, self.progressBarColor.CGColor);
    [roundedRect fill];
}

@end
