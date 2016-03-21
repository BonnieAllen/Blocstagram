//
//  User.h
//  Blocstagram
//
//  Created by King Kittenhead on 3/7/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface User : NSObject <NSCoding>

- (instancetype) initWithDictionary:(NSDictionary *)userDictionary;

@property (nonatomic, strong) NSString *idNumber;

@property (nonatomic, strong) NSString *userName;

@property (nonatomic, strong) NSString *fullName;

@property (nonatomic, strong) NSURL *profilePictureURL;

@property (nonatomic, strong) UIImage *profilePicture;

@end

