//
//  SAMenuButton.h
//  NavigationMenu
//
//  Created by Ivan Sapozhnik on 2/19/13.
//  Copyright (c) 2013 Ivan Sapozhnik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SIMenuButton : UIControl

@property (nonatomic, unsafe_unretained) BOOL isActive;
@property (nonatomic) CGGradientRef spotlightGradientRef;
@property (unsafe_unretained) CGFloat spotlightStartRadius;
@property (unsafe_unretained) float spotlightEndRadius;
@property (unsafe_unretained) CGPoint spotlightCenter;
@property (nonatomic, strong) UILabel *title;
@property (nonatomic, strong) UIImageView *arrow;

- (UIImageView *)defaultGradient;

@end
