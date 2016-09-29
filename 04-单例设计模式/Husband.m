//
//  Husband.m
//  04-单例设计模式
//
//  Created by 无线互联 on 16/9/22.
//  Copyright © 2016年 无线互联. All rights reserved.
//

#import "Husband.h"

@implementation Husband

static Husband * instance = nil;

+ (Husband *)shareHusband
{
    /*
    //加锁 防止 多个线程同时调用
    @synchronized (self) {
        
        if (instance == nil)
        {
            instance = [[self alloc] init];
            
        }
     
    }

    return  instance;
     */
    //GCD
    static dispatch_once_t onceToken;
    //保证block里面的东西,只执行一次
    dispatch_once(&onceToken, ^{
        instance =  [[super allocWithZone:nil] init];
    });
    
    //推测
    /*
     onceToken 为0, block没有被执行
     onceToken 非0,
     */
    return instance;
}

//alloc 方法本质调用 allocWithZone
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    /*
    @synchronized (self) {
        if (instance == nil) {
            instance = [super allocWithZone:zone];
        }
        return  instance;
    }
    return  nil;
     */
    return  [self shareHusband];
}

//copy
- (id)copyWithZone:(struct _NSZone *)zone
{
    return  self;
}



@end
