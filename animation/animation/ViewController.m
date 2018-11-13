//
//  ViewController.m
//  animation
//
//  Created by Jaylan on 2018/11/13.
//  Copyright © 2018 Jaylan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    UIView *layerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 90, 90)];
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
    redLayer.contentsGravity = kCAGravityResizeAspectFill;
    [layerView.layer addSublayer:redLayer];
}


@end
