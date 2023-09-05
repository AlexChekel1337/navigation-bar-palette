//
//  NavigationBarPalette.h
//  NavigationBarPalette
//
//  Created by Alexander Chekel on 05.09.2023.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NavigationBarPalette : UIView

@property(nonatomic, assign) CGFloat minimumHeight;
@property(nonatomic, assign) CGFloat preferredHeight;
@property(getter=isPinned, nonatomic, assign) BOOL pinned;

- (id)initWithContentView:(UIView *)view;
- (BOOL)isPinned;

NS_ASSUME_NONNULL_END

@end
