//
//  ViewController.m
//  animation
//
//  Created by Jaylan on 2018/11/13.
//  Copyright © 2018 Jaylan. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    UIView *layerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    layerView.center = self.view.center;
    layerView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:layerView];
    
    CALayer *redLayer = [CALayer new];
    redLayer.frame = CGRectMake(0, 0, 50, 50);
    redLayer.contentsCenter = layerView.layer.contentsCenter;
    
    //增加背景颜色
//    redLayer.backgroundColor = [UIColor redColor].CGColor;
    //增加背景image，contents为id类型（为适配iOS上面的CGImage和OS上的NSImage）(__bridge id _Nullable)的作用是将foundation 类型 CGImageRef转换成Cocoa对象
    redLayer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"ico_konhgjian_"].CGImage);
    
    //contentsGravity类似UIView中的contentMode
    redLayer.contentsGravity = kCAGravityCenter;
    //contensScale定义了寄宿图的像素尺寸和视图大小的比例，默认为1.0
    redLayer.contentsScale = [UIImage imageNamed:@"ico_konhgjian_"].scale;
    //相当于UIView的clipsToBounds属性
    redLayer.masksToBounds = YES;
    
    //contensRect显示寄宿图的一个子域
    redLayer.contentsRect = CGRectMake(0.5, 0.5, 1, 1);
    [layerView.layer addSublayer:redLayer];
    
    CALayer *blueLayer = [CALayer new];
    blueLayer.frame = CGRectMake(50, 50, 50, 50);
    blueLayer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"ico_konhgjian_"].CGImage);
    blueLayer.contentsGravity = kCAGravityCenter;
    blueLayer.contentsScale = [UIImage imageNamed:@"ico_konhgjian_"].scale;
    blueLayer.masksToBounds = YES;
    redLayer.contentsRect = CGRectMake(0, 0, 0.5, 0.5);
    [layerView.layer addSublayer:blueLayer];
}


@end
