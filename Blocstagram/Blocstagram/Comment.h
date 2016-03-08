//
//  Comment.h
//  Blocstagram
//
//  Created by King Kittenhead on 3/7/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@class User;

@interface Comment : NSObject


@property (nonatomic, strong) NSString *idNumber;

@property (nonatomic, strong) User *from;
@property (nonatomic, strong) NSString *text;

@end
