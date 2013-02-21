//
//  SICellSelection.m
//  NavigationMenu
//
//  Created by Ivan Sapozhnik on 2/21/13.
//  Copyright (c) 2013 Ivan Sapozhnik. All rights reserved.
//

#import "SICellSelection.h"
#import <QuartzCore/QuartzCore.h>

@interface SICellSelection ()
@property (nonatomic, strong) UIColor *baseColor;
@end

@implementation SICellSelection

- (id)initWithFrame:(CGRect)frame andColor:(UIColor *)baseColor_
{
    self = [super initWithFrame:frame];
    if (self) {
        self.baseColor = baseColor_;
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    CGFloat hue;
    CGFloat saturation;
    CGFloat brightness;
    CGFloat alpha;
    
    if([self.baseColor getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha]){
        brightness -= 0.35;
    }
    
    UIColor * highColor = self.baseColor;
    UIColor * lowColor = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:alpha];
    
    CAGradientLayer * gradient = [CAGradientLayer layer];
    [gradient setFrame:[self bounds]];
    [gradient setColors:[NSArray arrayWithObjects:(id)[highColor CGColor], (id)[lowColor CGColor], nil]];
    [[self layer] addSublayer:gradient];

    [self setNeedsDisplay];     
}

- (void)dealloc
{
    self.baseColor = nil;
}

@end
