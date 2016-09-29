//
//  Wife.m
//  04-单例设计模式
//
//  Created by 无线互联 on 16/9/22.
//  Copyright © 2016年 无线互联. All rights reserved.
//

#import "Wife.h"
#import "Husband.h"

@implementation Wife

- (void)work
{
    Husband * busband1 = [Husband shareHusband];
    Husband * busband2 = [[Husband alloc] init];
    Husband * busband3 = [busband1 copy];
    
    NSLog(@"%p %p %p",busband1,busband2,busband3);
    
//    NSLog(@"%@帮老公%@洗衣服",self.name,busband.name);
}

@end
