//
//  ComposeCommentView.m
//  Blocstagram
//
//  Created by King Kittenhead on 3/21/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import "ComposeCommentView.h"

@interface ComposeCommentView () <UITextViewDelegate>

@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) UIButton *button;

@end

@implementation ComposeCommentView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.textView = [UITextView new];
        self.textView.delegate = self;
        
        self.button = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.button setAttributedTitle:[self commentAttributedString] forState:UIControlStateNormal];
        [self.button addTarget:self action:@selector(commentButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:self.textView];
        [self.textView addSubview:self.button];
    }
    return self;
}

- (NSAttributedString *) commentAttributedString {
    NSString *baseString = NSLocalizedString(@"COMMENT", @"comment button text");
    NSRange range = [baseString rangeOfString:baseString];
    
    NSMutableAttributedString *commentString = [[NSMutableAttributedString alloc] initWithString:baseString];
    
    [commentString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:10] range:range];
    [commentString addAttribute:NSKernAttributeName value:@1.3 range:range];
    [commentString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:0.933 green:0.933 blue:0.933 alpha:1] range:range];
    
    return commentString;
}

- (void) stopComposingComment {
    [self.textView resignFirstResponder];
}

#pragma mark - Setters & Getters

- (void) setIsWritingComment:(BOOL)isWritingComment {
    [self setIsWritingComment:isWritingComment animated:NO];
}

- (void) setIsWritingComment:(BOOL)isWritingComment animated:(BOOL)animated {
}

- (void) setText:(NSString *)text {
    _text = text;
    self.textView.text = text;
    self.textView.userInteractionEnabled = YES;
    self.isWritingComment = text.length > 0;
}

#pragma mark - Button Target

- (void) commentButtonPressed:(UIButton *) sender {
    if (self.isWritingComment) {
        [self.textView resignFirstResponder];
        self.textView.userInteractionEnabled = NO;
        [self.delegate commentViewDidPressCommentButton:self];
    } else {
        [self setIsWritingComment:YES animated:YES];
        [self.textView becomeFirstResponder];
    }
}

#pragma mark - UITextViewDelegate

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView {
    [self setIsWritingComment:YES animated:YES];
    [self.delegate commentViewWillStartEditing:self];
    
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    NSString *newText = [textView.text stringByReplacingCharactersInRange:range withString:text];
    [self.delegate commentView:self textDidChange:newText];
    return YES;
}

- (BOOL)textViewShouldEndEditing:(UITextView *)textView {
    BOOL hasComment = (textView.text.length > 0);
    [self setIsWritingComment:hasComment animated:YES];
    
    return YES;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
