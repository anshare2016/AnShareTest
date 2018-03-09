//
//  ViewController.m
//  AnShareTest
//
//  Created by twh on 2018/3/9.
//  Copyright © 2018年 919174554. All rights reserved.
//  作者QQ 919174554

#import "ViewController.h"

#import "iOS_Share.h"

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)sharePicToWX:(id)sender {
    
    // 创建分享对象
    iOS_Share*share1 = [[iOS_Share alloc]init];
    
    // 调用分享对象初始化函数 shareWX 表示分享到微信，Completeblock是分享结果回调
    [share1 init:shareWX Completeblock:^(shareResult result) {
        switch (result) {
            case shareResultCancelled:
                NSLog(@"点击取消");
                break;
            case shareResultDone:
                NSLog(@"点击分享");
                break;
        }
    }];
    
     // 添加要分享的图片
    [share1 addImage:[UIImage imageNamed:@"test.jpg"]];
    
    // 弹出分享页面
    [self presentViewController:[share1 composeVC1] animated:YES completion:nil];
}


- (IBAction)shareWebPageToWX11:(id)sender {
    
    iOS_Share*share1 = [[iOS_Share alloc]init];                  // 创建分享对象
    [share1 init:shareWX Completeblock:^(shareResult result) {   // 调用分享对象初始化函数 shareWX 表示分享到微信，Completeblock是分享结果回调
        switch (result) {
            case shareResultCancelled:
                NSLog(@"点击取消");
                break;
            case shareResultDone:
                NSLog(@"点击分享");
                break;
        }
    }];
    
    [share1 addUrl:[NSString stringWithFormat:@"http://www.baidu.com"]];                // 添加要分享的图片,这里以分享百度为例，这个函数最好找iOS11 平台调用
    [self presentViewController:[share1 composeVC1] animated:YES completion:nil];       // 弹出分享页面
}

- (IBAction)shareWebPageToWX:(id)sender {
    
    iOS_Share*share1 = [[iOS_Share alloc]init];                  // 创建分享对象
    [share1 init:shareWX Completeblock:^(shareResult result) {   // 调用分享对象初始化函数 shareWX 表示分享到微信，Completeblock是分享结果回调
        switch (result) {
            case shareResultCancelled:
                NSLog(@"点击取消");
                break;
            case shareResultDone:
                NSLog(@"点击分享");
                break;
        }
    }];
    
    // 分享链接到任意iOS平台,这里可以指定链接显示的图片和标题
    [share1 addUrl:[NSString stringWithFormat:@"http://liangliskin.taobao.com/"] Title:@"my modify title" Image:[UIImage imageNamed:@"test.jpg"]];
    [self presentViewController:[share1 composeVC1] animated:YES completion:nil];            // 弹出分享页面
}


- (IBAction)sharePicToQQ:(id)sender {
    
    iOS_Share*share1 = [[iOS_Share alloc]init];                  // 创建分享对象
    [share1 init:shareQQ Completeblock:^(shareResult result) {   // 调用分享对象初始化函数 shareWX 表示分享到微信，Completeblock是分享结果回调
        switch (result) {
            case shareResultCancelled:
                NSLog(@"点击取消");
                break;
            case shareResultDone:
                NSLog(@"点击分享");
                break;
        }
    }];
    
    [share1 addImage:[UIImage imageNamed:@"test.jpg"]];                                 // 添加要分享的图片
    [self presentViewController:[share1 composeVC1] animated:YES completion:nil];       // 弹出分享页面
}

- (IBAction)shareWebPageToQQ:(id)sender {
    iOS_Share*share1 = [[iOS_Share alloc]init];                  // 创建分享对象
    [share1 init:shareQQ Completeblock:^(shareResult result) {   // 调用分享对象初始化函数 shareWX 表示分享到微信，Completeblock是分享结果回调
        switch (result) {
            case shareResultCancelled:
                NSLog(@"点击取消");
                break;
            case shareResultDone:
                NSLog(@"点击分享");
                break;
        }
    }];
    
    [share1 addUrl:[NSString stringWithFormat:@"http://liangliskin.taobao.com/"]];
    [self presentViewController:[share1 composeVC1] animated:YES completion:nil];       // 弹出分享页面
}

- (IBAction)shareWB:(id)sender
{
    
}

@end




