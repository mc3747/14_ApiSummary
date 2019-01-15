//
//  TestCell.m
//  slimController
//
//  Created by zhifanYoung on 16/4/12.
//  Copyright © 2016年 zhifanYoung. All rights reserved.
//

#import "TestCell.h"

@interface TestCell ()

@property (strong, nonatomic)  UILabel *titleLabel;

@property (strong, nonatomic)  UILabel *descLabel;

@end

@implementation TestCell

- (void)configureWithModel:(TestModel *)m {
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, self.bounds.size.height)];
    self.descLabel = [[UILabel alloc] initWithFrame:CGRectMake(200, 0, 100, self.bounds.size.height)];
    self.titleLabel.text = m.title;
    self.descLabel.text = m.desc;
    
    [self addSubview:self.titleLabel];
    [self addSubview:self.descLabel];
}


@end
