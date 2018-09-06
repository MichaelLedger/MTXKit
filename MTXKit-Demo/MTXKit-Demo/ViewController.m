//
//  ViewController.m
//  MTXKit-Demo
//
//  Created by MountainX on 2018/9/6.
//  Copyright © 2018年 MTX Software Technology Co.,Ltd. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+MTX.h"

@interface ViewController ()

@end

@implementation ViewController

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [ViewController swizzelInstanceMethod:@selector(viewDidLoad) with:@selector(swizzeledViewDidLoad)];
    });
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    
    [self performSelector:@selector(test) afterDelay:1.0f];
}

- (void)swizzeledViewDidLoad {
    NSLog(@"swizzeledViewDidLoad");
    [self swizzeledViewDidLoad];
}

-(void)test {
    NSLog(@"===test====");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
