//
//  GoldChallengeView.m
//  Hypnosister
//
//  Created by Sumit Saha on 22/08/16.
//  Copyright © 2016 Sumit Saha. All rights reserved.
//

#import "GoldChallengeView.h"

@implementation GoldChallengeView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    
    //Getting the currentContext
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    
    
    CGRect bounds = rect;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y  + bounds.size.height / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
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
    
    //Drawing the background patern
    [path stroke];
    
    
    //Saving the state so as to overlay
    CGContextSaveGState(currentContext);

    
    CGRect imageRect = CGRectMake(bounds.size.width / 4.0, bounds.size.height / 4.0, bounds.size.width / 2.0, bounds.size.height / 2.0);
    
    //Drawing the background triangle with the color gradient
    UIBezierPath *trianglePath = [[UIBezierPath alloc] init];
    [trianglePath moveToPoint:CGPointMake(center.x, imageRect.origin.y)];
    [trianglePath addLineToPoint:CGPointMake(imageRect.origin.x, imageRect.origin.y + imageRect.size.height)];
    [trianglePath addLineToPoint:CGPointMake(imageRect.origin.x + imageRect.size.width, imageRect.origin.y + imageRect.size.height)];
    [trianglePath closePath];
    
    
    //Gradient covers everything in the view hence needed to install the clippin path always so that it doesn't occupy the complete view
    [trianglePath addClip];
    
    
    //Drawing the image with dropshadow effect
    CGFloat locations[2] = {0.0, 1.0};
    CGFloat components[8] = {0.0, 1.0, 0.0, 1.0, 1.0, 1.0, 0.0, 1.0};
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, components, locations, 2);
    
    CGPoint startPoint = CGPointMake(center.x, imageRect.origin.y );
    CGPoint endPoint = CGPointMake(center.x, imageRect.origin.y + imageRect.size.height );
    
    CGContextDrawLinearGradient(currentContext, gradient, startPoint, endPoint, kCGGradientDrawsBeforeStartLocation|kCGGradientDrawsAfterEndLocation);
    
    CGGradientRelease(gradient);
    
    //Releases the colorspace
    CGColorSpaceRelease(colorSpace);
    
    //Here state needs to be restored otherwise the image will appear only in the clipping boundary
    CGContextRestoreGState(currentContext);
    
    CGContextSaveGState(currentContext);
    
    //Following call sets the shadow
    CGContextSetShadow(currentContext, CGSizeMake(4, 7), 3);
    UIImage *logoImage = [UIImage imageNamed:@"logo.png"];
    [logoImage drawInRect:imageRect];
    CGContextRestoreGState(currentContext);
    
}


@end
