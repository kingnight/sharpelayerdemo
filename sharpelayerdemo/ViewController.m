//
//  ViewController.m
//  sharpelayerdemo
//
//  Created by jinkai on 17/1/4.
//  Copyright © 2017年 jinkai. All rights reserved.
//

#import "ViewController.h"
#import "MaskView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    imageView.image = [UIImage imageNamed:@"bg"];
    [self.view addSubview:imageView];
    
//    MaskView *maskView = [[MaskView alloc]initWithFrame:self.view.frame maskRect:CGRectMake(0, 0, 100, 100) radius:10];
//    [self.view addSubview:maskView];
    
    MaskView *maskView1 = [[MaskView alloc]initWithFrame:self.view.frame maskRect1:CGRectMake(0, 0, 100, 100) radius1:10 maskRect2:CGRectMake(30, 150, 100, 100) radius2:10];
    [self.view addSubview:maskView1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
