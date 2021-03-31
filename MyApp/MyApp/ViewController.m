//
//  ViewController.m
//  MyApp
//
//  Created by Destiny on 2019/12/10.
//  Copyright © 2019 Destiny. All rights reserved.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>
#import <FlutterPluginRegistrant/GeneratedPluginRegistrant.h>
#import <limiting_direction_csx/MainViewController.h>
#import "OCViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)goFlutterAction:(UIButton *)sender {
    
    MainViewController *flutterViewController = [MainViewController new];
    [GeneratedPluginRegistrant registerWithRegistry:flutterViewController];
    [flutterViewController setInitialRoute:@"flutter_login"];
    [self.navigationController pushViewController:flutterViewController animated:YES];
    
    __weak typeof(self) weakSelf = self;
    FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"com.allen.test.call" binaryMessenger:flutterViewController];
    [channel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
    // Flutter invokeMethod 特定方法的时候会触发到这里
        if ([call.method isEqualToString:@"getFlutterMessage"]) {
            result(@"接收到flutter的消息,回传信息from OC");
            NSLog(@"接收到flutter的参数:%@",call.arguments);
            [weakSelf goOCVC:call.arguments];
        }
    }];
}

- (void)goOCVC:(NSString *)flutterStr{
    OCViewController *ocVC = [[OCViewController alloc]init];
    ocVC.flutterMsg = flutterStr;
    [self.navigationController pushViewController:ocVC animated:YES];
}


@end
