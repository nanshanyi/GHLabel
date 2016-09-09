//
//  ViewController.m
//  GHLabel
//
//  Created by 李国怀 on 2016/9/9.
//  Copyright © 2016年 李国怀. All rights reserved.
//

#import "ViewController.h"
#import "GHLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    GHLabel *label = [[GHLabel alloc]initWithFrame:CGRectMake(10, 200, 300, 100)];
    label.textColor = [UIColor purpleColor];
    label.text = @"@mjksad:爱搜索单#wozai#位@南山南:爱的[haha]是覅[chi]卡和第三方#saasf#i@搜狐:阿斯[he]蒂芬http://baicu.com";
    [self.view addSubview:label];
    label.linkTapHandle = ^(GHLabel *label, NSString *selectStr, NSRange range){
        NSLog(@"str:%@ range:%@",selectStr,NSStringFromRange(range));
    };
    label.userTaphandle = ^(GHLabel *label, NSString *selectStr, NSRange range){
        NSLog(@"str:%@ range:%@",selectStr,NSStringFromRange(range));
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
