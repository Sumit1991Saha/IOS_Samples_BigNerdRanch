//
//  TabBarViewController.m
//  HypnoNerd
//
//  Created by Sumit Saha on 23/08/16.
//  Copyright © 2016 Sumit Saha. All rights reserved.
//

#import "TabBarViewController.h"
#import "HypnosisViewController.h"
#import "ReminderViewController.h"

@interface TabBarViewController ()

@property UITabBarController *barController;
@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    HypnosisViewController *hvc = [[HypnosisViewController alloc] init];
    ReminderViewController *rvc = [[ReminderViewController alloc] init];
    
  //  UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    _barController.viewControllers = @[hvc, rvc];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
