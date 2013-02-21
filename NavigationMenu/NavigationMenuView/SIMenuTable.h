//
//  SAMenuTable.h
//  NavigationMenu
//
//  Created by Ivan Sapozhnik on 2/19/13.
//  Copyright (c) 2013 Ivan Sapozhnik. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SIMenuDelegate <NSObject>
- (void)didBackgroundTap;
- (void)didSelectItemAtIndex:(NSUInteger)index;
@end

@interface SIMenuTable : UIView <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) id <SIMenuDelegate> menuDelegate;

- (id)initWithFrame:(CGRect)frame items:(NSArray *)items;
- (void)show;
- (void)hide;

@end
