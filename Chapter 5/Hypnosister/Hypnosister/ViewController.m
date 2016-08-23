//
//  ViewController.m
//  Hypnosister
//
//  Created by Sumit Saha on 22/08/16.
//  Copyright © 2016 Sumit Saha. All rights reserved.
//

#import "ViewController.h"
#import "HypnosisView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //Touchesbegan demo implementation
    /*HypnosisView *view = [[HypnosisView alloc] initWithFrame:self.view.frame];
    self.view = view;
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view drawRect:self.view.bounds];
    */
    
    
    //Usage of basic UIScrollView
    /*CGRect screenRect = self.view.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.height *= 2;
    bigRect.size.width *= 2;
    
    
    //Making the scroll view as the primary view of the main view
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
     
    //This makes the scroll view as the main view in the parent view controller
    self.view = scrollView;
    
    //And making the bigger hypnosis view a subview of scroll View
    HypnosisView *hypnosisView = [[HypnosisView alloc] initWithFrame:bigRect];
    [scrollView addSubview:hypnosisView];
    
    
    //Tell the scroll view how big its content area is
    scrollView.contentSize = bigRect.size;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view drawRect:self.view.bounds];
    */
    
    
    //Usage of Panning and paging
    CGRect screenRect = self.view.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2;
    
    
    //Making the scroll view as the primary view of the main view
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    
    //To force the scroll view to snap into either of the views
    scrollView.pagingEnabled = YES;
    //This makes the scroll view as the main view in the parent view controller
    self.view = scrollView;
    
    //And making the bigger hypnosis view a subview of scroll View
    HypnosisView *hypnosisView = [[HypnosisView alloc] initWithFrame:screenRect];
    [scrollView addSubview:hypnosisView];
    
    screenRect.origin.x += screenRect.size.width;
    HypnosisView *anotherHypnosisView = [[HypnosisView alloc] initWithFrame:screenRect];
    [scrollView addSubview:anotherHypnosisView];

    
    
    //Tell the scroll view how big its content area is
    scrollView.contentSize = bigRect.size;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view drawRect:self.view.bounds];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
