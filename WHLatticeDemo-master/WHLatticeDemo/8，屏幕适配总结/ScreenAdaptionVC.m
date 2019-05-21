//
//  ScreenAdaptionVC.m
//  WHLatticeDemo
//
//  Created by gjfax on 2019/5/11.
//  Copyright © 2019 remember17. All rights reserved.
//

#import "ScreenAdaptionVC.h"
#import "UIViewController+ContentView.h"

@interface ScreenAdaptionVC ()

@end

@implementation ScreenAdaptionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *redView = [[UIView alloc]initWithFrame:AAdaptionRect(100, 100, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *greenView = [[UIView alloc]initWithFrame:AAdaptionRect(300, 100, 100, 100)];
    greenView.backgroundColor = [UIColor greenColor];
    [self.contentView addSubview:greenView];
}



@end
