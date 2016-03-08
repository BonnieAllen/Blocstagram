//
//  MediaTableViewCell.h
//  Blocstagram
//
//  Created by King Kittenhead on 3/7/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Media;

@interface MediaTableViewCell : UITableViewCell

@property (nonatomic, strong) Media *mediaItem;

// Get the media item
- (Media *)mediaItem;

// Set a new media item
- (void)setMediaItem:(Media *)mediaItem;

+ (CGFloat) heightForMediaItem:(Media *)mediaItem width:(CGFloat)width;

@end
