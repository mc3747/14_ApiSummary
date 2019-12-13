//
//  FrameLayoutHeightVC.m
//  WHLatticeDemo
//
//  Created by gjfax on 2019/12/13.
//  Copyright © 2019 remember17. All rights reserved.
//

#import "FrameLayoutHeightVC.h"
#import "TriangleTextFieldView.h"

@interface FrameLayoutHeightVC ()
@property (nonatomic, strong) TriangleTextFieldView *textFieldView;
@end

@implementation FrameLayoutHeightVC

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 150, 30)];
     button1.backgroundColor = [UIColor greenColor];
     [button1 setTitle:@"增加第一行高度" forState:UIControlStateNormal];
     [button1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal] ;
     button1.titleLabel.adjustsFontSizeToFitWidth = YES;
     [button1 addTarget:self action:@selector(increaseAction:) forControlEvents:UIControlEventTouchUpInside];
     [self.view addSubview:button1];
     
     UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(170, 100, 150, 30)];
     [button2 setTitle:@"减少第一行高度" forState:UIControlStateNormal];
     [button2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal] ;
      button2.titleLabel.adjustsFontSizeToFitWidth = YES;
     button2.backgroundColor = [UIColor redColor];
     [button2 addTarget:self action:@selector(reduceAction:) forControlEvents:UIControlEventTouchUpInside];
     [self.view addSubview:button2];
    
    TriangleTextFieldView *textFieldView = [[TriangleTextFieldView  alloc] initWithFrame:CGRectMake(0, 100, 200, 50)];
    [self.view addSubview:textFieldView];
    _textFieldView = textFieldView;
    
}

- (void)increaseAction:(UIButton *)button{
    
}

- (void)reduceAction:(UIButton *)button{

}

@end
