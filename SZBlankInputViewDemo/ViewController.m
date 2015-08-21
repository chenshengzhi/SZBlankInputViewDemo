//
//  ViewController.m
//  SZBlankInputViewDemo
//
//  Created by 陈圣治 on 15/8/21.
//  Copyright (c) 2015年 shengzhichen. All rights reserved.
//

#import "ViewController.h"
#import "SZBlankInputView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard:)]];
    
    SZBlankInputView *iv = [[SZBlankInputView alloc] initWithFrame:CGRectMake(20, 80, 200, 100)];
    iv.backgroundColor = [UIColor redColor];
    [self.view addSubview:iv];
    
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(20, 200, 200, 40)];
    tf.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:tf];
}

- (void)hideKeyboard:(UITapGestureRecognizer *)tapGesture {
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
