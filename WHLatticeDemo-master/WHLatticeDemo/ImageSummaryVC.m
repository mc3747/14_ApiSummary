//
//  ImageSummaryVC.m
//  WHLatticeDemo
//
//  Created by gjfax on 2019/2/22.
//  Copyright © 2019 remember17. All rights reserved.
//

#import "ImageSummaryVC.h"
#import "UIImage+CornerRadius.h"

@interface ImageSummaryVC ()

@end

@implementation ImageSummaryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"home_spring_bg"];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, image.size.width, image.size.height)];
    UIImage *newImage = [image roundedCornerImageWithCornerRadius:15.f];
    imageView.image = newImage;
    [self.view addSubview:imageView];
}



@end
