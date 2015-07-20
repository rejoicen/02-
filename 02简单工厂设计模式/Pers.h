//
//  Pers.h
//  02简单工厂设计模式
//
//  Created by qianfeng on 15-6-29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pers : NSObject
{
@protected
    NSString *_name;
    NSInteger _age;
}
@property (nonatomic,copy) NSString *name;

//NSInteger强制适配64位处理器
@property (nonatomic,assign) NSInteger age;

@property (nonatomic,copy) void(^workBlock)(Pers *person,NSString *name,NSInteger age);

+ (id)person;

- (void)doWork;

@end
