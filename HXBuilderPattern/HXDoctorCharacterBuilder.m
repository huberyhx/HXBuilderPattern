//
//  HXDoctorCharacterBuilder.m
//  HXBuilderPattern
//
//  Created by haoxu.wang on 2018/8/15.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import "HXDoctorCharacterBuilder.h"

@implementation HXDoctorCharacterBuilder

/** 增加伤害 */
- (instancetype)increasePower:(NSInteger)power {
    self.character.power = power * 2;
    return self;
}

/** 增加防御 */
- (instancetype)increaseProtection:(NSInteger)protection {
    self.character.protection = protection * 10;
    return self;
}

/** 增加速度 */
- (instancetype)increaseVelocity:(NSInteger)velocity {
    self.character.velocity = velocity * 8;
    return self;
}

/** 增加气血 */
- (instancetype)increaseBlood:(NSInteger)blood {
    self.character.blood = blood * 10;
    return self;
}

- (void)createCharacter {
    self.character = [[HXCharacter alloc] init];
    self.character.type = @"我是医生, 我是一名辅助";
}

@end
