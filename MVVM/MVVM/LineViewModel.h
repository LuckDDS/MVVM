//
//  ViewModel.h
//  MVVM
//
//  Created by 董德帅 on 2020/6/17.
//  Copyright © 2020 九天. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^DataBlock)(NSArray *_Nonnull);
NS_ASSUME_NONNULL_BEGIN

@interface LineViewModel : NSObject

/// 方法
/// @param date 时间
/// @param dataBlock dataBlock description
- (void)getLineDataWithDate:(NSString*)date blockData:(DataBlock)dataBlock;

@end

NS_ASSUME_NONNULL_END
