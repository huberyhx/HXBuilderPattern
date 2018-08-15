//
//  HXGameDirector.h
//  HXBuilderPattern
//
//  Created by haoxu.wang on 2018/8/15.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HXCharacterBuilder.h"
#import "HXCharacter.h"

@interface HXGameDirector : NSObject
- (instancetype)initWithBuilder:(HXCharacterBuilder *)builder;

/** 创建辅助角色 */
- (void)createAuxiliaryCharacter;

/** 创建输出角色 */
- (void)createExportCharacter;
@end
