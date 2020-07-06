//
//  ViewController.m
//  MVVM
//
//  Created by 董德帅 on 2020/6/17.
//  Copyright © 2020 九天. All rights reserved.
//

#import "ViewController.h"
#import "LineViewModel.h"
#import "LineView.h"
@interface ViewController ()
@property(nonatomic, strong)LineViewModel *viewModel;
@property(nonatomic, strong)LineView * lineView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.viewModel = [[LineViewModel alloc]init];
    self.lineView = [[LineView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.lineView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.lineView];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.viewModel getLineDataWithDate:@"12" blockData:^(NSArray *lineData){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.lineView drawRectWithData:lineData[0]];
            [self.lineView setNeedsDisplay];
        });
    }];
}
@end
