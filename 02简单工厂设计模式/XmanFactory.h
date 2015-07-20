//
//  XmanFactory.h
//  02简单工厂设计模式
//
//  Created by qianfeng on 15-6-29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pers.h"
@interface XmanFactory : NSObject


+ (Pers *)personWithTask:(NSString *)task;


@end
