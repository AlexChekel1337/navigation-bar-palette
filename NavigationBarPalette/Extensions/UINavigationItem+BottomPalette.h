//
//  UINavigationItem+BottomPalette.h
//  NavigationBarPalette
//
//  Created by Alexander Chekel on 05.09.2023.
//

#import <UIKit/UIKit.h>

@interface UINavigationItem (BottomPalette)

@property(getter=_bottomPalette, setter=_setBottomPalette:, retain, nonatomic, nullable) UIView *_bottomPalette;

- (void)_setBottomPalette:(nullable UIView *)palette;

@end
