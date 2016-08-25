//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Sumit Saha on 25/08/16.
//  Copyright © 2016 Sumit Saha. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

//declaring a class extension
@interface BNRItemStore ()

@property (nonatomic) NSMutableArray *privateItems;

@end

@implementation BNRItemStore

+ (instancetype)sharedStore
{
    static BNRItemStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    
    return sharedStore;
}

- (instancetype)init
{
    @throw [NSException exceptionWithName:@"Singleton" reason:@"Use +[BNRItemStore sharedStore]" userInfo:nil];
    return nil;
}

- (instancetype)initPrivate
{
    self = [super init];
    if(self){
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *) allItems{
    
    //Returning a non - mutable instance of the data structure
    return self.privateItems;
    
}

- (BNRItem *)createItem
{
    BNRItem *randomItem = [BNRItem randomItem];
    
    [self.privateItems addObject:randomItem];
    
    return randomItem;
}

@end

