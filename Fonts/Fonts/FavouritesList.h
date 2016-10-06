//
//  FavouritesList.h
//  Fonts
//
//  Created by ZheyuanFu on 16/6/16.
//  Copyright (c) 2016年 ZheyuanFu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FavouritesList : NSObject

+ (instancetype) sharedFavouritesList;
- (NSArray *) favourites;
- (void) addFavourite:(id)item;
- (void) removeFavourite:(id)item;

@end
