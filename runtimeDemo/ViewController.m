//
//  ViewController.m
//  runtimeDemo
//
//  Created by Amuxiaomu on 16/8/6.
//  Copyright © 2016年 Amuxiaomu. All rights reserved.
//

#import "ViewController.h"
//#import "Person.h"
#import "Person+hobby.h"
@interface ViewController ()
@property (nonatomic, strong) Person * p;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MARK: - 在分类中添加的 hobby 属性
    Person * p = [[Person alloc] init];
    
    self.p = p;
    
    p.name = @"张三";
    
    [p setHobby:@"打篮球"];
    
    //在分类中动态添加属性
    NSLog(@"姓名:%@,爱好:%@",p.name,p.hobby);
    
    // MARK: - 监听对象属性的改变
    
    NSLog(@"isa:%@",[p valueForKeyPath:@"isa"]);
    
    [p  addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:NULL];
   
    NSLog(@"isa:%@",[p valueForKeyPath:@"isa"]);
    
    p.name = @"李四";
  
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    NSLog(@"%@",change);
}

@end
