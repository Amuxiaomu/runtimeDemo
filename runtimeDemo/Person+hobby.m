//
//  Person+hobby.m
//  runtimeDemo
//
//  Created by Amuxiaomu on 16/8/6.
//  Copyright © 2016年 Amuxiaomu. All rights reserved.
//

#import "Person+hobby.h"
#import <objc/runtime.h>

const char * KEY = "hobby";
@implementation Person (hobby)
- (NSString *)hobby{
    /*
     1.要求关联的对象
     2.关联的key
     */
    return objc_getAssociatedObject(self, KEY);
}

- (void)setHobby:(NSString *)hobby{
    /*
     关联对象
     1. 要求关联的对象
     2. 关联的key
     3. 关联的值
     4. 关联策略- 属性关键字
     */
    
    objc_setAssociatedObject(self, KEY, hobby, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end
