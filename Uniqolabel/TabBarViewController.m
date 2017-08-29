//
//  TabBarViewController.m
//  Uniqolabel
//
//  Created by Shakti Pratap Singh on 29/08/17.
//  Copyright © 2017 Shakti Pratap Singh. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    NSLog(@"%ld", (long)item.tag);
    UIImageView *view = tabBar.subviews[item.tag+1].subviews.firstObject;
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        CGAffineTransform scale = CGAffineTransformMakeScale(1.5, 1.5);
        view.transform=scale;
    } completion:^(BOOL finished) {
        CGAffineTransform scale = CGAffineTransformMakeScale(1, 1);
        view.transform=scale;
    }];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
