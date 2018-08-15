//
//  HXCharacterBuilder.m
//  HXBuilderPattern
//
//  Created by haoxu.wang on 2018/8/15.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import "HXCharacterBuilder.h"


@implementation HXCharacterBuilder

- (instancetype)init {
    if (self = [super init]) {
        [self createCharacter];
    }
    return self;
}

- (void)createCharacter {
    self.character  = [[HXCharacter alloc] init];
}

/** 获取创建好的角色 */
- (HXCharacter *)getCharacter {
    return self.character;
}

/** 增加伤害 */
- (instancetype)increasePower:(NSInteger)power {
    self.character.power = power;
    return self;
}

/** 增加防御 */
- (instancetype)increaseProtection:(NSInteger)protection {
    self.character.protection = protection;
    return self;
}

/** 增加速度 */
- (instancetype)increaseVelocity:(NSInteger)velocity {
    self.character.velocity = velocity;
    return self;
}

/** 增加气血 */
- (instancetype)increaseBlood:(NSInteger)blood {
    self.character.blood = blood;
    return self;
}

@end
