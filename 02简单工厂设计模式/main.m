//
//  main.m
//  02简单工厂设计模式
//
//  Created by qianfeng on 15-6-29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Student.h"
//#import "Police.h"
#import "Pers.h"
#import "PersonFactory.h"
#import "XmanFactory.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        
//        Student *stu = [Student person];
//        [stu setWorkBlock:^(Pers *person, NSString *name, NSInteger age) {
//            NSLog(@"buxuex");
//        }];
//        stu.name = @"hhl";
//        [stu setWorkBlock:^(Pers *person, NSString *name, NSInteger age) {
//            NSLog(@"sssssssss");
//            Student *tmp = (Student *)person;
//            [tmp readBookWithBookName:@"水浒传"];
//        }];
//        [stu doWork];
//        
////        Police *police = [Police person];
////        [police catchBadGuyWithGuyName:@"xiao\\"];
//        
        
        Pers *p = [PersonFactory personWithTask:@"读书"];
        [p doWork];
        Pers *p2 = [XmanFactory personWithTask:@"营救"];
        [p2 doWork];
    }
    return 0;
}
