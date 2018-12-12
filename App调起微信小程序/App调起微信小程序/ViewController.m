//
//  ViewController.m
//  App调起微信小程序
//
//  Created by gaocaihua on 2018/12/11.
//  Copyright © 2018年 高才华. All rights reserved.
//

#import "ViewController.h"

#import "WXApi.h"
#import "WechatAuthSDK.h"
#import "WXApiObject.h"

#ifdef DEBUG
# define CHLog(fmt, ...) NSLog((@"[文件名:%s]\t""[行号:%d] \n" fmt), [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, ##__VA_ARGS__);
#else
# define CHLog(...);
#endif


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    WXLaunchMiniProgramReq *launchMiniProgramReq = [WXLaunchMiniProgramReq object];
    launchMiniProgramReq.userName = @"您的小程序的原名";  //拉起的小程序的username
    launchMiniProgramReq.path=@"指定页面";   //拉起小程序页面的可带参路径，不填默认拉起小程序首页
    launchMiniProgramReq.miniProgramType=WXMiniProgramTypeRelease; //拉起小程序的类型
    [WXApi sendReq:launchMiniProgramReq];
    
}


@end
