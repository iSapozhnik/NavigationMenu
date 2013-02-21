//
//  SIMenuConfiguration.h
//  NavigationMenu
//
//  Created by Ivan Sapozhnik on 2/20/13.
//  Copyright (c) 2013 Ivan Sapozhnik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SIMenuConfiguration : NSObject
+ (float)menuWidth;
+ (float)itemCellHeight;
+ (float)animationDuration;
+ (float)backgroundAlpha;
+ (float)menuAlpha;
+ (float)bounceOffset;
+ (UIImage *)arrowImage;
+ (float)arrowPadding;
@end
