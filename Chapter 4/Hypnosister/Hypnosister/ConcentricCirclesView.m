//
//  ConcentricCirclesView.m
//  Hypnosister
//
//  Created by Sumit Saha on 22/08/16.
//  Copyright © 2016 Sumit Saha. All rights reserved.
//

#import "ConcentricCirclesView.h"

@implementation ConcentricCirclesView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGRect bounds = rect;
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y  + bounds.size.height / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    float maxRadius = MIN(bounds.size.width, bounds.size.height) / 2.0;
    
    for (float currentRadius = maxRadius-5; currentRadius > 0; currentRadius -=20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center
                        radius:currentRadius
                    startAngle:0
                      endAngle:M_PI * 2
                     clockwise:true];
    }
    
    path.lineWidth = 10;
    [[UIColor lightGrayColor] setStroke];
    [path stroke];
}



@end
