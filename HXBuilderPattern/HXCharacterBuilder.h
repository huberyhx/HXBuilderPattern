//
//  HXCharacterBuilder.h
//  HXBuilderPattern
//
//  Created by haoxu.wang on 2018/8/15.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HXCharacter.h"

@interface HXCharacterBuilder : NSObject

@property (nonatomic, strong) HXCharacter *character;

/** 获取创建好的角色 */
- (HXCharacter *)getCharacter;

/** 增加伤害 */
- (instancetype)increasePower:(NSInteger)power;

/** 增加防御 */
- (instancetype)increaseProtection:(NSInteger)protection;

/** 增加速度 */
- (instancetype)increaseVelocity:(NSInteger)velocity;

/** 增加气血 */
- (instancetype)increaseBlood:(NSInteger)blood;

@end
