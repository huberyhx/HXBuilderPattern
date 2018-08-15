//
//  HXCharacter.m
//  HXBuilderPattern
//
//  Created by haoxu.wang on 2018/8/15.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import "HXCharacter.h"

@implementation HXCharacter

- (instancetype)init {
    if (self = [super init]) {
        //搞一搞初始值
        self.power = 1.0;
        self.protection = 1.0;
        self.velocity = 1.0;
        self.blood = 1.0;
    }
    return self;
}

- (void)lookLook {
    NSLog(@"\n 我是啥 : %@,   \n我的伤害 : %.2f,   \n我的防御 : %.2f,   \n我的速度 : %.2f,   \n我的气血 : %.2f,",self.type, self.power,self.protection,self.velocity,self.blood);
}

@end
