//
//  PersonFactory.m
//  02简单工厂设计模式
//
//  Created by qianfeng on 15-6-29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "PersonFactory.h"
#import "Student.h"
#import "Police.h"
@implementation PersonFactory

+ (Pers *)personWithTask:(NSString *)task
{
    Pers *person = nil;

    if ([task isEqualToString:@"读书"]) {
        person = [Student person];
        person.name = @"韩梅梅";
        person.age = 30;
        
        [person setWorkBlock:^(Pers *person, NSString *name, NSInteger age) {
            Student *tmpStu = (Student *)person;
            [tmpStu readBookWithBookName:@"金瓶梅"];
        }];
    }
    else if ([task isEqualToString:@"读书"])
    {
        person = [Student person];
        person.name = @"黄蓉";
        person.age = 18;
        [person setWorkBlock:^(Pers *p, NSString *n, NSInteger a) {
            NSLog(@"xxxxxxxxxxxooooooo");
        }];
    }
    else if ([task isEqualToString:@"抓贼"])
    {
        person = [Police person];
        person.name = @"成龙";
        person.age = 60;
        [person setWorkBlock:^(Pers *p, NSString *n, NSInteger a) {
            NSLog(@"警察抓贼");
        }];
    }
    return person;
}

@end
