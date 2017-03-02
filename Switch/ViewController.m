//
//  ViewController.m
//  Switch
//
//  Created by 小何 on 17/2/27.
//  Copyright © 2017年 zkbc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, getter=isOn) BOOL on;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Switch 开关控件学习
    //1.创建开关
    UISwitch *switch1 = [[UISwitch alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:switch1];
    
    //开关的大小是系统默认的 自己不能指定switch的大小 大小为51.000000  31.000000
    NSLog(@"%f  %f",switch1.frame.size.width,switch1.frame.size.height);
    
    //2.设置开关状态
    //2.1 setOn 方法
    [switch1 setOn:YES];
    
    //2.2 设置开关方法  animated
    [switch1 setOn:NO animated:YES];
    
    //判断开关状态
    if ([switch1 isOn]) {
        
        NSLog(@"switch is ON");
        
    }else {
        
        NSLog(@"switch is OFF");
    }
    
    //3. 添加监听事件
    [switch1 addTarget:self action:@selector(switchIsChanged:) forControlEvents:UIControlEventValueChanged];
}

#pragma mark --Switch监听方法
- (void)switchIsChanged:(UISwitch *)switch1 {
    
    if ([switch1 isOn]) {
        
        NSLog(@"switch is ON");
        
    }else {
        
        NSLog(@"switch is OFF");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
