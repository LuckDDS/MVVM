//
//  LineView.m
//  MVVM
//
//  Created by 董德帅 on 2020/6/17.
//  Copyright © 2020 九天. All rights reserved.
//

#import "LineView.h"
#import "LineDayModel.h"
#import "LinePointModel.h"
@implementation LineView
{
    LineDayModel * model;
    UILabel * labHighest;
    UILabel * labLowest;
    UILabel * labDate;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        labHighest = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, self.frame.size.width, 50)];
        [self setLabelStyle:labHighest];
        labLowest = [[UILabel alloc]initWithFrame:CGRectMake(0, 150, self.frame.size.width, 50)];
        [self setLabelStyle:labLowest];
        labDate = [[UILabel alloc]initWithFrame:CGRectMake(0, 200, self.frame.size.width, 50)];
        [self setLabelStyle:labDate];
    }
    return self;
}

- (void)drawRectWithData:(LineDayModel*)dayModel{
    
    model = [dayModel copy];
    labHighest.text = dayModel.highest;
    labDate.text = dayModel.date;
    labLowest.text = dayModel.lowest;
}

- (void)setLabelStyle:(UILabel *)lab{
    lab.backgroundColor = [UIColor yellowColor];
    lab.textColor = [UIColor blackColor];
    lab.font = [UIFont systemFontOfSize:18];
    [self addSubview:lab];
}

- (void)drawRect:(CGRect)rect{

    float left = (self.frame.size.width - 240)/2;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextClearRect(context, CGRectMake(0, 300, self.frame.size.width,300));

    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextFillRect(context,CGRectMake(0, 300, self.frame.size.width,300));
//    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, left, 300);
    CGPoint points [model.arrData.count];
    for (int m = 0; m < model.arrData.count; m ++) {
        @autoreleasepool {
            LinePointModel * pointModel = model.arrData[m];
            points[m] = CGPointMake(left+m, 300 + [pointModel.pointNum intValue]);
        }
    }
    CGContextAddLines(context, points, model.arrData.count);
    CGContextSetRGBStrokeColor(context, 1, 0, 0, 1);
    CGContextSetLineWidth(context, 1);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextStrokePath(context);
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
}

@end
