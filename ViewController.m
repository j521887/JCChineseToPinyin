//
//  ViewController.m
//  JCChineseToPinyin
//
//  Created by Des on 2016/12/5.
//  Copyright © 2016年 WJC. All rights reserved.
//

#import "ViewController.h"
#import "JCChineseToPinyin.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [JCChineseToPinyin getShortPinyin:@"重庆"];
    [JCChineseToPinyin getFullPinyin:@"重要"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
