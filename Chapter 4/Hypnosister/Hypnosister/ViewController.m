//
//  ViewController.m
//  Hypnosister
//
//  Created by Sumit Saha on 22/08/16.
//  Copyright © 2016 Sumit Saha. All rights reserved.
//

#import "ViewController.h"
#import "ConcentricCirclesView.h"
#import "BronzeChallengeView.h"
#import "GoldChallengeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Normal
    /*ConcentricCirclesView *view = [[ConcentricCirclesView alloc] init];
    self.view = view;
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view drawRect:self.view.bounds];
    */
    
    //Bronze Challenge
    /*BronzeChallengeView *view = [[BronzeChallengeView alloc] init];
    self.view = view;
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view drawRect:self.view.bounds];}
     */
    
    //Gold Challenge
    GoldChallengeView *view = [[GoldChallengeView alloc] init];
    self.view = view;
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view drawRect:self.view.bounds];
}
    
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
