//
//  Pers.m
//  02简单工厂设计模式
//
//  Created by qianfeng on 15-6-29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Pers.h"

@implementation Pers

+ (id)person
{
    return [[self alloc]init];
}

- (void)doWork
{
    if (self.workBlock) {
        self.workBlock(self,self.name,self.age);
    }

}

@end
