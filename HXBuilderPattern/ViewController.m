//
//  ViewController.m
//  HXBuilderPattern
//
//  Created by haoxu.wang on 2018/8/15.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import "ViewController.h"
#import "HXGameDirector.h"
#import "HXCharacterBuilder.h"
#import "HXCharacter.h"
#import "HXDoctorCharacterBuilder.h"
#import "HXWarriorCharacterBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //创建生成器
    HXCharacterBuilder *warriorBuilder = [[HXWarriorCharacterBuilder alloc] init];
    //根据生成器创建指导者
    HXGameDirector *warriorDirector = [[HXGameDirector alloc] initWithBuilder:warriorBuilder];
    //指导者利用生成器去生产
    [warriorDirector createExportCharacter];
    //在生成器中获取角色
    HXCharacter *warriorCharacter = [warriorBuilder getCharacter];
    //看看角色什么样
    [warriorCharacter lookLook];
    
    HXCharacterBuilder *doctorBuilder = [[HXDoctorCharacterBuilder alloc] init];
    HXGameDirector *doctorDirector = [[HXGameDirector alloc] initWithBuilder:doctorBuilder];
    [doctorDirector createAuxiliaryCharacter];
    HXCharacter *doctorCharacter = [doctorBuilder getCharacter];
    [doctorCharacter lookLook];
}

@end
