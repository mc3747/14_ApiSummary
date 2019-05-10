//
//  model.m
//  slimController
//
//  Created by zhifanYoung on 16/4/12.
//  Copyright © 2016年 zhifanYoung. All rights reserved.
//

#import "TestModel.h"

@implementation TestModel

- (instancetype)initWithDict:(NSDictionary *)dict {

    if (self = [super init]) {
        
        self.title = dict[@"title"];
        self.desc = dict[@"desc"];
    }
    return self;
}

+ (instancetype)modelWithDict:(NSDictionary *)dict {

    return [[self alloc] initWithDict:dict];
}

+ (NSArray *)modelList {

    NSArray *dictArray = @[
                @{@"title": @"Frame系1", @"desc": @"纯Frame"},
                @{@"title": @"Frame系2", @"desc": @"MyLayout"},
                @{@"title": @"Frame系3", @"desc":@"SDLayout"},
                @{@"title": @"AutoLayout系1", @"desc":@"纯AutoLayout"},
                @{@"title": @"AutoLayout系2", @"desc": @"Masonry"},
                @{@"title": @"AutoLayout系3", @"desc": @"PureLayout"}
                ];
    NSMutableArray *tmpArr = [NSMutableArray array];
    for (NSDictionary *dict in dictArray) {
        TestModel *m = [TestModel modelWithDict:dict];
        [tmpArr addObject:m];
    }
    return tmpArr.copy;
    
}

@end
