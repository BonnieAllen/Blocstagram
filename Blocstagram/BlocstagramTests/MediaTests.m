//
//  MediaTests.m
//  Blocstagram
//
//  Created by King Kittenhead on 4/1/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Media.h"

@interface MediaTests : XCTestCase

@end

@implementation MediaTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatInitializationWorks {
    
    NSDictionary *sourceDictionary = @{@"id": @"1234567",
                                       @"user": @{@"images": @{@"standard_resolution": @{@"url":@"http://www.example.com/example.jpg"}}},
                                       @"caption": @{@"text" : @"The sun also shines"}};
    
    Media *testMedia = [[Media alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testMedia.mediaURL, sourceDictionary[@"images"] [@"standard_resolution"] [@"ur"], @"The media url should be equal");
    XCTAssertEqual(testMedia.caption, [[sourceDictionary objectForKey:@"caption"] objectForKey:@"text"], @"The caption should be equal");
};


@end
