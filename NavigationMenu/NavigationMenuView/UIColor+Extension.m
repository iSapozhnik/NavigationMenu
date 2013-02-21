//
//  UIColor+Extension.m
//  NavigationMenu
//
//  Created by Ivan Sapozhnik on 2/21/13.
//  Copyright (c) 2013 Ivan Sapozhnik. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)
+ (UIColor *)color:(UIColor *)color_ withAlpha:(float)alpha_
{
    UIColor *uicolor = color_;
    CGColorRef colorRef = [uicolor CGColor];
    
    int numComponents = CGColorGetNumberOfComponents(colorRef);
    
    CGFloat red = 0.0;
    CGFloat green = 0.0;
    CGFloat blue = 0.0;
    CGFloat alpha = 0.0;
    if (numComponents == 4)
    {
        const CGFloat *components = CGColorGetComponents(colorRef);
        red = components[0];
        green = components[1];
        blue = components[2];
        alpha = components[3];
    }
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha_];
}
@end
