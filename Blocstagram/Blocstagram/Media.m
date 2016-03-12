//
//  Media.m
//  Blocstagram
//
//  Created by King Kittenhead on 3/7/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import "Media.h"
#import "Comment.h"

@implementation Media

- (instancetype) initWithDictionary:(NSDictionary *)mediaDictionary {
    self = [super init];
    
    if (self) {
        self.idNumber = mediaDictionary[@"id"];
        self.user = [[User alloc] initWithDictionary:mediaDictionary[@"user"]];
        NSString *standardResolutionImageURLString = mediaDictionary[@"images"][@"standard_resolution"][@"url"];
        NSURL *standardResolutionImageURL = [NSURL URLWithString:standardResolutionImageURLString];
        
        if (standardResolutionImageURL) {
            self.mediaURL = standardResolutionImageURL;
        }
        
        NSObject *captionObject = mediaDictionary[@"caption"];
        // Caption might be null (if there's no caption)
        if ([captionObject isKindOfClass:[NSDictionary class]]) {
            NSDictionary *captionDictionary = (NSDictionary *)captionObject;
            self.caption = captionDictionary[@"text"];
        } else {
            self.caption = @"";
        }
        
// iterate through the comments array, pull out the dictionaries one at a time, and pass them to Comment for parsing
        
        NSMutableArray *commentsArray = [NSMutableArray array];
        
        for (NSDictionary *commentDictionary in mediaDictionary[@"comments"][@"data"]) {
            Comment *comment = [[Comment alloc] initWithDictionary:commentDictionary];
            [commentsArray addObject:comment];
        }
        
        self.comments = commentsArray;
    }
    
    return self;
}

@end
