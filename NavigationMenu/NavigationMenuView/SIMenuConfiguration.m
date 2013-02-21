//
//  SIMenuConfiguration.m
//  NavigationMenu
//
//  Created by Ivan Sapozhnik on 2/20/13.
//  Copyright (c) 2013 Ivan Sapozhnik. All rights reserved.
//

#import "SIMenuConfiguration.h"

@implementation SIMenuConfiguration
//Menu width
+ (float)menuWidth
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    return window.frame.size.width;
}

//Menu item height
+ (float)itemCellHeight
{
    return 44.0f;
}

//Animation duration of menu appearence
+ (float)animationDuration
{
    return 0.35f;
}

//Menu substrate alpha value
+ (float)backgroundAlpha
{
    return 0.6;
}

//Menu alpha value
+ (float)menuAlpha
{
    return 0.6;
}

//Value of bounce
+ (float)bounceOffset
{
    return -7.0;
}

//Arrow image near title
+ (UIImage *)arrowImage
{
    return [UIImage imageNamed:@"arrow_down.png"];
}

//Distance between Title and arrow image
+ (float)arrowPadding
{
    return 13.0;
}
@end
