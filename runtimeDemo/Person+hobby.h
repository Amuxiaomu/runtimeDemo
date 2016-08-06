//
//  Person+hobby.h
//  runtimeDemo
//
//  Created by Amuxiaomu on 16/8/6.
//  Copyright © 2016年 Amuxiaomu. All rights reserved.
//

#import "Person.h"

@interface Person (hobby)

//分类中能够定义属性,但是没有自动生成getter&setter方法,对应的成员变量也不生成
@property(nonatomic,copy) NSString *hobby;

//- (NSString *)hobby;
//- (void)setHobby:(NSString *)hobby;
@end
