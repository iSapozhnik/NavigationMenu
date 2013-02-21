//
//  SIMenuConfiguration.h
//  NavigationMenu
//
//  Created by Ivan Sapozhnik on 2/20/13.
//  Copyright (c) 2013 Ivan Sapozhnik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SIMenuConfiguration : NSObject
//Menu width
+ (float)menuWidth;

//Menu item height
+ (float)itemCellHeight;

//Animation duration of menu appearence
+ (float)animationDuration;

//Menu substrate alpha value
+ (float)backgroundAlpha;

//Menu alpha value
+ (float)menuAlpha;

//Value of bounce
+ (float)bounceOffset;

//Arrow image near title
+ (UIImage *)arrowImage;

//Distance between Title and arrow image
+ (float)arrowPadding;

//Items color in menu
+ (UIColor *)itemsColor;

//Menu color
+ (UIColor *)mainColor;

//Item selection animation speed
+ (float)selectionSpeed;

//Menu item text color
+ (UIColor *)itemTextColor;

//Selection color
+ (UIColor *)selectionColor;
@end
