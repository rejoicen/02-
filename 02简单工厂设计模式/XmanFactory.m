//
//  XmanFactory.m
//  02简单工厂设计模式
//
//  Created by qianfeng on 15-6-29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "XmanFactory.h"
#import "XPolice.h"
#import "XStudent.h"
@implementation XmanFactory

+ (Pers *)personWithTask:(NSString *)task
{
    Pers *person = [XPolice person];
    if ([task isEqualToString:@"营救"]) {
        person.name = @"暴风女";
        [person setWorkBlock:^(Pers *p, NSString *n, NSInteger a) {
            NSLog(@"执行营救任务");
        }];
    }
    return person;

}



@end
