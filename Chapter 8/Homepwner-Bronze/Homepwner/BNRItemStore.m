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

@property (nonatomic) NSMutableArray *privateItemsLessThan50;
@property (nonatomic) NSMutableArray *privateItemsMoreThan50;

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
        _privateItemsLessThan50 = [[NSMutableArray alloc] init];
        _privateItemsMoreThan50 = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *) allItemsLessThan50{
    
    //Returning a non - mutable instance of the data structure
    return self.privateItemsLessThan50;
}

- (NSArray *) allItemsMoreThan50{
    
    //Returning a non - mutable instance of the data structure
    return self.privateItemsMoreThan50;
}

- (BNRItem *)createItem
{
    BNRItem *randomItem = [BNRItem randomItem];
    
    if(randomItem.valueInDollars < 50)
        [self.privateItemsLessThan50 addObject:randomItem];
    else
        [self.privateItemsMoreThan50 addObject:randomItem];
    
    return randomItem;
}

@end

