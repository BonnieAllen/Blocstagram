//
//  DataSource.h
//  Blocstagram
//
//  Created by King Kittenhead on 3/7/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Media;

typedef void (^NewItemCompletionBlock)(NSError *error);

@interface DataSource : NSObject



+(instancetype) sharedInstance;


@property (nonatomic, strong, readonly) NSArray *mediaItems;
@property (nonatomic, assign) BOOL isRefreshing;
@property (nonatomic, assign) BOOL isLoadingOlderItems;
@property (nonatomic, strong, readonly) NSString *accessToken;

- (void) requestNewItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;

- (void) requestOldItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;


- (void) deleteMediaItem:(Media *)item;

- (void) moveMediaItem:(Media *)item;

+ (NSString *) instagramClientID;

@end
