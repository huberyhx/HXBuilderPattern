//
//  HXGameDirector.m
//  HXBuilderPattern
//
//  Created by haoxu.wang on 2018/8/15.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import "HXGameDirector.h"

@interface HXGameDirector()
@property (nonatomic, strong) HXCharacterBuilder *builder;
@end

@implementation HXGameDirector
- (instancetype)initWithBuilder:(HXCharacterBuilder *)builder {
    if (self = [super init]) {
        self.builder = builder;
    }
    return self;
}

/** 创建辅助角色 */
- (void)createAuxiliaryCharacter {
    [self.builder increasePower:20];
    [self.builder increaseProtection:100];
    [self.builder increaseVelocity:80];
    [self.builder increaseBlood:100];
}

/** 创建输出角色 */
- (void)createExportCharacter {
    // 因为创建属性的方法, 返回了 builder 所以也可以这么调用
    [[[[self.builder increasePower:100]increaseProtection:50]increaseVelocity:100]increaseBlood:50];
}

@end
