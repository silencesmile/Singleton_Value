//
//  ViewController.m
//  521Travel_Singleton
//
//  Created by youngstar on 16/12/8.
//  Copyright © 2016年 521Travel.com. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "DataHandle.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label = [[UILabel alloc]initWithFrame:(CGRectMake(50, 50, 200, 30))];
    [self.view addSubview:_label];
    
   
    
    
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    button.frame = CGRectMake(100, 200, 100, 30);
    [button setTitle:@"NEXT" forState:(UIControlStateNormal)];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:(UIControlEventTouchUpInside)];
    [button setTitleColor:[UIColor redColor] forState:(UIControlStateNormal)];
    [self.view addSubview:button];
}

- (void)buttonAction:(UIButton *)button
{
    SecondViewController *second = [[SecondViewController alloc]init];
    
    UINavigationController *secondNC = [[UINavigationController alloc]initWithRootViewController:second];
    [self presentViewController:secondNC animated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
   
    if ([DataHandle shareDataHandle].value.length > 0) {
        _label.text = [DataHandle shareDataHandle].value;
    }else
    {
        _label.text = @"显示内容";
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
