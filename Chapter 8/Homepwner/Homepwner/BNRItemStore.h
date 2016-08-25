//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Sumit Saha on 25/08/16.
//  Copyright © 2016 Sumit Saha. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject

@property (nonatomic, readonly) NSArray *allItems;

+ (instancetype)sharedStore;
- (BNRItem *)createItem;


@end
