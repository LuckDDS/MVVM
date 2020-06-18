//
//  LineView.h
//  MVVM
//
//  Created by 董德帅 on 2020/6/17.
//  Copyright © 2020 九天. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LineDayModel;
NS_ASSUME_NONNULL_BEGIN

@interface LineView : UIView

- (void)drawRectWithData:(LineDayModel * __nonnull)dayModel;

@end

NS_ASSUME_NONNULL_END
