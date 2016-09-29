//
//  ViewController.m
//  04-单例设计模式
//
//  Created by 无线互联 on 16/9/22.
//  Copyright © 2016年 无线互联. All rights reserved.
//

#import "ViewController.h"
#import "Husband.h"
#import "Wife.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Wife * wife1 = [[Wife alloc] init];
    wife1.name = @"双儿";
    
     Wife * wife2 = [[Wife alloc] init];
    wife2.name = @"建宁";
    [wife1 work];
}


@end
