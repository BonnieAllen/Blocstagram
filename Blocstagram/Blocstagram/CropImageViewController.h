//
//  CropImageViewController.h
//  Blocstagram
//
//  Created by King Kittenhead on 3/26/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import "MediaFullScreenViewController.h"

@class CropImageViewController;

@protocol CropImageViewControllerDelegate <NSObject>

- (void) cropControllerFinishedWithImage:(UIImage *)croppedImage;

@end

@interface CropImageViewController : MediaFullScreenViewController

- (instancetype) initWithImage: (UIImage*)sourceImage;

@property (nonatomic, weak) NSObject <CropImageViewControllerDelegate> *delegate;

@end
