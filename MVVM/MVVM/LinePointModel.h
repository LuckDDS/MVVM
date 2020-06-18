//
//  Model.h
//  MVVM
//
//  Created by 董德帅 on 2020/6/17.
//  Copyright © 2020 九天. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MJExtension/MJExtension.h>

NS_ASSUME_NONNULL_BEGIN

@interface LinePointModel : NSObject

/// 时间分钟
@property (nonatomic, copy)NSString *minute;

/// 点数
@property (nonatomic, copy)NSString *pointNum;

@end

NS_ASSUME_NONNULL_END
