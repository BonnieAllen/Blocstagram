//
//  ComposeCommentViewTests.m
//  Blocstagram
//
//  Created by King Kittenhead on 4/1/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ComposeCommentView.h"

@interface ComposeCommentViewTests : XCTestCase

@end

@implementation ComposeCommentViewTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)composeCommentViewSetText {
    
    ComposeCommentView *testCommentView = [[ComposeCommentView alloc] init];
    
    XCTAssertEqual(testCommentView.isWritingComment, YES, @"Set the isWritingComment when there is text.");
}

- (void)composeCommentViewSetNoText {
    
    ComposeCommentView *testCommentView = [[ComposeCommentView alloc] init];
    
    XCTAssertEqual(testCommentView.isWritingComment, NO, @"Set that isWritingCommnet is No when there is no text");
}


@end
