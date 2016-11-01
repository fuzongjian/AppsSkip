//
//  SomeController.m
//  secondApp
//
//  Created by 付宗建 on 16/11/1.
//  Copyright © 2016年 youran. All rights reserved.
//

#import "SomeController.h"

@interface SomeController ()

@end

@implementation SomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * backButton = [UIButton buttonWithType:UIButtonTypeSystem];
    backButton.frame = CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 40);
    [backButton setTitle:@"返回到firstApp" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(backButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
}
- (void)backButtonClicked:(UIButton *)sender{
    NSURL * url = [NSURL URLWithString:@"firstApp://"];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        NSLog(@"canOpenUrl");
        [[UIApplication sharedApplication] openURL:url];
    }else{
        NSLog(@"can not secondApp");
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
