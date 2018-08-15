//
//  HXCharacter.h
//  HXBuilderPattern
//
//  Created by haoxu.wang on 2018/8/15.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

// 要创建的人物角色
#import <UIKit/UIKit.h>

@interface HXCharacter : NSObject

/** 伤害值 */
@property (nonatomic, assign) CGFloat power;
/** 防御值 */
@property (nonatomic, assign) CGFloat protection;
/** 速度值 */
@property (nonatomic, assign) CGFloat velocity;
/** 气血值 */
@property (nonatomic, assign) CGFloat blood;
/** 角色类型 */
@property (nonatomic, copy) NSString *type;

//查看角色属性
- (void)lookLook;
@end
