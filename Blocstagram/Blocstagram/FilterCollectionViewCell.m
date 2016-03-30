//
//  FilterCollectionViewCell.m
//  Blocstagram
//
//  Created by King Kittenhead on 3/30/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import "FilterCollectionViewCell.h"
#import "PostToInstagramViewController.h"

@interface FilterCollectionViewCell () <UICollectionViewDelegate>

@end

@implementation FilterCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}



@end

