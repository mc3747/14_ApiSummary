//
//  AutoLayoutVC.m
//  WHLatticeDemo
//
//  Created by gjfax on 2019/1/15.
//  Copyright © 2019 remember17. All rights reserved.
//

#import "AutoLayoutVC.h"
#import "ArrayDataSource.h"
#import "TestModel.h"
#import "TestCell.h"

@interface AutoLayoutVC ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(strong, nonatomic) ArrayDataSource *dataSource;
@property(strong, nonatomic) NSArray *modelArr;
@end

static NSString *const CellId = @"CellId";
@implementation AutoLayoutVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TableViewCellConfigureBlock configureBlock = ^(TestCell* cell, TestModel *item) {
        
        [cell configureWithModel:item];
    };
    
    self.dataSource = [[ArrayDataSource alloc] initWithItems:self.modelArr cellIdentifier:CellId cellName:@"TestCell" configureCellBlock:configureBlock];
    
    self.tableView.dataSource = self.dataSource;
}


- (NSArray *)modelArr {
    
    if (!_modelArr) {
        _modelArr = [TestModel modelList];
    }
    return _modelArr;
}

@end
