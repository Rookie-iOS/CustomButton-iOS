//
//  ViewController.m
//  CricleButton
//
//  Created by Yanice on 2016/12/24.
//  Copyright © 2016年 Yanice. All rights reserved.
//

#import "ViewController.h"
#import "ZYButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *iv = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 120, 120)];
    iv.backgroundColor = [UIColor greenColor];
    [self.view addSubview:iv];
    
    
    ZYButton *btn = [ZYButton buttonWithType:UIButtonTypeCustom];
    btn.frame = iv.bounds;
    btn.layer.cornerRadius = iv.bounds.size.width*0.5;
    btn.backgroundColor = [UIColor redColor];
    [iv addSubview:btn];
    
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];

}
- (void)btnAction {
    NSLog(@"action");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
