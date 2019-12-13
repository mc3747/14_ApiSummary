//
//  TriangleTextFieldView.m
//  WHLatticeDemo
//
//  Created by gjfax on 2019/12/13.
//  Copyright © 2019 remember17. All rights reserved.
//

#import "TriangleTextFieldView.h"
@interface TriangleTextFieldView()
@property (nonatomic, strong) UITextField  *textField;
@property (nonatomic, strong) UIView *triangleView;
@property (nonatomic, strong) UILabel      *warningLabel;
@end

@implementation TriangleTextFieldView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addTipsViewWithFrame:frame];
        [self addTriangleViewWithFrame:frame];
        [self addTipsViewWithFrame:frame];
    }
    return self;
}

-(void)addTextFieldWithFrame:(CGRect)frame{
    UITextField *textField = [[UITextField alloc] initWithFrame:frame];
    _textField = textField;
}
-(void)addTriangleViewWithFrame:(CGRect)frame{
       UIView *triangleView = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(frame) - 15, CGRectGetWidth(frame), 15)];
       CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
       shapeLayer.strokeColor = [UIColor redColor].CGColor;
       shapeLayer.lineWidth = 1.0f;
       shapeLayer.fillColor  = [UIColor redColor].CGColor;
       //定义画图的path
       UIBezierPath *path = [[UIBezierPath alloc] init];
       CGPoint point1 = CGPointMake(40, 0);
       CGPoint point2 = CGPointMake(47, 10);
       CGPoint point3 = CGPointMake(33, 10);
       //path移动到开始画图的位置
       [path moveToPoint:point1];
       [path addLineToPoint:point2];
       [path addLineToPoint:point3];
       //关闭path
       [path closePath];
       //三角形内填充颜色
       shapeLayer.path = path.CGPath;
       [triangleView.layer addSublayer:shapeLayer];
        _triangleView = triangleView;
       _triangleView.hidden = YES;
}
-(void)addTipsViewWithFrame:(CGRect)frame{
    UILabel *warningLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, 35)];
       warningLabel.textColor = [UIColor orangeColor];
       warningLabel.numberOfLines = 2;
       warningLabel.alpha = 1;
       warningLabel.font = [UIFont systemFontOfSize:14.f];
       [self addSubview:warningLabel];
    _warningLabel = warningLabel;
    _warningLabel.hidden = YES;
}

-(void)showTips:(NSString *)tips{
    
    [UIView animateWithDuration:0.3 animations:^{
        _triangleView.hidden = NO;
        _warningLabel.hidden = NO;
    }];
}

-(void)hideTips{
    _triangleView.hidden = YES;
    _warningLabel.hidden = YES;
}
@end
