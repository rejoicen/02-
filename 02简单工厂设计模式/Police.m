//
//  Police.m
//  02简单工厂设计模式
//
//  Created by qianfeng on 15-6-29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Police.h"

@implementation Police
- (void)catchBadGuyWithGuyName:(NSString *)gunName
{
    NSLog(@"警察%@正在抓%@",_name,gunName);
}
@end
