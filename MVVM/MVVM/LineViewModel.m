//
//  ViewModel.m
//  MVVM
//
//  Created by 董德帅 on 2020/6/17.
//  Copyright © 2020 九天. All rights reserved.
//

#import "LineViewModel.h"
#import "LineDayModel.h"
#import "LinePointModel.h"
@implementation LineViewModel
{
    DataBlock _dataBlock;
}

- (void)getLineDataWithDate:(NSString *)date blockData:(DataBlock)dataBlock{
    _dataBlock = [dataBlock copy];
    //执行网络请求
    NSMutableArray * arr = [NSMutableArray new];
    for (int m = 0; m < 240; m ++) {
        @autoreleasepool {
            [arr addObject:@{@"pointNum":[NSString stringWithFormat:@"%d",arc4random()%80+80],@"minute":[NSString stringWithFormat:@"%d",m]}];
        }
    }
    NSDictionary * dict = @{@"highest":@"180",@"lowest":@"80",@"date":@"2020/06/17",@"arrData":arr};
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0), ^{
        LineDayModel *dayModel = [LineDayModel mj_objectWithKeyValues:dict];
        
        self->_dataBlock(@[[dayModel copy]]);
    });
    
}

@end
