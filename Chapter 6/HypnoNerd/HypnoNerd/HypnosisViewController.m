//
//  HypnosisViewController.m
//  HypnoNerd
//
//  Created by Sumit Saha on 23/08/16.
//  Copyright © 2016 Sumit Saha. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"
@interface HypnosisViewController ()

@end

@implementation HypnosisViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HypnosisView *view = [[HypnosisView alloc] initWithFrame:self.view.frame];
    self.view = view;
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view drawRect:self.view.bounds];
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
