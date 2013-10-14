Navigation Menu for iOS
=============
*Version 1.0*

Navigation Menu is an Objective-C component that adds possibility to show menu from navigation bar.
Inspired by Vkontakte app. Minimum iOS target is 5.0

*TODO: add Pod*

Customization
---------
 - Menu item height *+ (float)itemCellHeight;*
 - Animation duration of menu appearence *+ (float)animationDuration;*
 - Menu substrate alpha value *+ (float)backgroundAlpha;*
 - Menu alpha value *+ (float)menuAlpha;*
 - Value of bounce *+ (float)bounceOffset;*
 - Arrow image near title *+ (UIImage *)arrowImage;*
 - Distance between Title and arrow image *+ (float)arrowPadding;*
 - Items color in menu *+ (UIColor *)itemsColor;*
 - Menu color *+ (UIColor *)mainColor;*
 - Item selection animation speed *+ (float)selectionSpeed;*
 - Menu item text color *+ (UIColor *)itemTextColor;*
 - Selection color (will create a gradiend with provided color at the top and 35% darker in the bottom) *+ (UIColor *)selectionColor;*

Example
---------
	//In your header (.h) file
	#import "SINavigationMenuView.h"

	@interface HAViewController : UIViewController <SINavigationMenuDelegate>

	@end
	
	//In your implementation (.m) file
	- (void)viewDidLoad
	{
    	[super viewDidLoad];
    	// check if we have a navigationItem
		if (self.navigationItem) {
        	CGRect frame = CGRectMake(0.0, 0.0, 200.0, self.navigationController.navigationBar.bounds.size.height);
        	SINavigationMenuView *menu = [[SINavigationMenuView alloc] initWithFrame:frame title:@"Menu"];
        	//Set in which view we will display a menu
        	[menu displayMenuInView:self.view];
        	//Create array of items
        	menu.items = @[@"News", @"Top Articles", @"Messages"];
        	menu.delegate = self;
        	self.navigationItem.titleView = menu;
    	}
    }
    
    //Delegate method
    - (void)didSelectItemAtIndex:(NSUInteger)index
	{
    	NSLog(@"did selected item at index %d", index);
	}
    
You will need to add QuartzCore framework. This component use ARC.
For cusomization see SIMenuConfiguration .h/.m files.
