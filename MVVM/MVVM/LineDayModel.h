//
//  LineDayModel.h
//  MVVM
//
//  Created by 董德帅 on 2020/6/17.
//  Copyright © 2020 九天. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MJExtension/MJExtension.h>
NS_ASSUME_NONNULL_BEGIN

@interface LineDayModel : NSObject<NSCopying,NSMutableCopying>
/// 最高点
@property (nonatomic, copy)NSString *highest;
/// 最低点
@property (nonatomic, copy)NSString *lowest;
/// 日期
@property (nonatomic, copy)NSString *date;
/// 分时数据
@property (nonatomic, copy)NSArray * arrData;

@end

NS_ASSUME_NONNULL_END
