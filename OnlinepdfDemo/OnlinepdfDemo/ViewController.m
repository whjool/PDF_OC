//
//  ViewController.m
//  OnlinepdfDemo
//
//  Created by hun on 2017/8/7.
//  Copyright © 2017年 hun. All rights reserved.
//

#import "ViewController.h"
#import "PdfShowViewController.h"

@interface ViewController ()




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"展示页面";

    
    UIButton *localBtn = [UIButton new];
    localBtn.backgroundColor = [UIColor purpleColor];
    [localBtn setTitle:@"加载本地" forState:UIControlStateNormal];
    [localBtn addTarget:self action:@selector(localAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:localBtn];
    
    UIButton *webBtn = [UIButton new];
    webBtn.backgroundColor = [UIColor greenColor];
    [webBtn setTitle:@"网页展示" forState:UIControlStateNormal];
    [webBtn addTarget:self action:@selector(webAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:webBtn];
    
    CGFloat magin  =20;
    [localBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view).offset(magin);
    }];
    
    [webBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view).offset(-magin);
    }];
    
}

-(void)localAction
{
    [self showOnline:NO];
}


-(void)webAction
{
    [self showOnline:YES];
}


-(void)showOnline:(BOOL)online
{
    PdfShowViewController *vc = [PdfShowViewController new];
    if (online) {
        vc.urlStr = @"http://www.wuhuepb.gov.cn/WebFileDb/NewFile/201407010837081010.pdf";
    }
    [self.navigationController pushViewController:vc animated:YES];
}


@end
