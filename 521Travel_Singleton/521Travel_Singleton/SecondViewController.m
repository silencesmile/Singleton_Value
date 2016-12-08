//
//  SecondViewController.m
//  521Travel_block_Value
//
//  Created by youngstar on 16/12/7.
//  Copyright © 2016年 521Travel.com. All rights reserved.
//

#import "SecondViewController.h"
#import "DataHandle.h"

@interface SecondViewController ()
@property(nonatomic, strong) UITextField *textField;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.title = @"Second";
    
    self.textField = [[UITextField alloc]initWithFrame:(CGRectMake(100, 200, 150, 30))];
    _textField.backgroundColor = [UIColor whiteColor];
    _textField.placeholder = @"在这里输入";
    [self.view addSubview:_textField];
    [self leftBack];
}

- (void)leftBack
{
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:(UIBarButtonItemStylePlain) target:self action:@selector(back:)];
    
    self.navigationItem.leftBarButtonItem = item;
}

- (void)back:(UIButton *)button
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    [DataHandle shareDataHandle].value = _textField.text;
}



@end
