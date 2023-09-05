//
//  NavigationBarPalette.m
//  NavigationBarPalette
//
//  Created by Alexander Chekel on 05.09.2023.
//

#import "NavigationBarPalette.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"

@implementation NavigationBarPalette

- (id)initWithContentView:(UIView *)view {
    Class aClass = NSClassFromString(@"_UINavigationBarPalette");
    SEL initWithContentViewSelector = NSSelectorFromString(@"initWithContentView:");
    return [[aClass alloc] performSelector:initWithContentViewSelector withObject:view];
}

@end
