//
//  ViewController.m
//  secondApp
//
//  Created by 付宗建 on 16/10/31.
//  Copyright © 2016年 youran. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)BackFirstAppButtonClick:(id)sender {
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

@end
