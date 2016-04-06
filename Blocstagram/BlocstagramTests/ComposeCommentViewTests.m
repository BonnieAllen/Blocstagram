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
    
    ComposeCommentView *testCommentSetText = [[ComposeCommentView alloc] init];
    
    testCommentSetText.text = [NSString stringWithFormat:@"Test this returns yes"];
    
    ComposeCommentView *testCommentSetNoText = [[ComposeCommentView alloc] init];
    
    testCommentSetNoText.text = [NSString stringWithFormat:@""];
    
    XCTAssertTrue(testCommentSetText.isWritingComment);
    XCTAssertFalse(testCommentSetNoText.isWritingComment);
    
}

@end
