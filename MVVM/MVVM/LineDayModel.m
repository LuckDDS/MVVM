//
//  LineDayModel.m
//  MVVM
//
//  Created by 董德帅 on 2020/6/17.
//  Copyright © 2020 九天. All rights reserved.
//

#import "LineDayModel.h"
@implementation LineDayModel
+ (NSDictionary *)mj_objectClassInArray{
    return @{@"arrData":@"LinePointModel"};
}


/// 浅拷贝
/// @param zone zone description
- (id)copyWithZone:(NSZone *)zone{
    //有子类时这么写
    //LineDayModel * model = [[[self class] allocWithZone:zone]init];
    LineDayModel * model = [[LineDayModel allocWithZone:zone]init];
    model.arrData = [self.arrData copy];
    model.date = [self.date copy];
    model.highest = [self.highest copy];
    model.lowest = [self.lowest copy];
    return model;
}

- (id)mutableCopyWithZone:(nullable NSZone *)zone{
    
    LineDayModel * dayModel = [[LineDayModel allocWithZone:zone]init];
    dayModel.arrData = [self.arrData mutableCopy];
    dayModel.date = [self.date mutableCopy];
    dayModel.highest = [self.highest mutableCopy];
    dayModel.lowest = [self.lowest mutableCopy];
    return dayModel;
    
}

@end
