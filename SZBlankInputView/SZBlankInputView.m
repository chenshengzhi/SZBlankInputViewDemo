//
//  SZBlankInputView.m
//  SZInputView
//
//  Created by 陈圣治 on 15/8/21.
//  Copyright (c) 2015年 shengzhichen. All rights reserved.
//

#import "SZBlankInputView.h"

@interface SZBlankInputView ()

@property (nonatomic, strong) UITextInputStringTokenizer *tokenizer;

@end

@implementation SZBlankInputView

@synthesize autocorrectionType;
@synthesize autocapitalizationType;
@synthesize spellCheckingType;
@synthesize keyboardType;
@synthesize keyboardAppearance;
@synthesize returnKeyType;
@synthesize enablesReturnKeyAutomatically;
@synthesize secureTextEntry;

@synthesize selectedTextRange;
@synthesize markedTextRange;
@synthesize markedTextStyle;
@synthesize beginningOfDocument;
@synthesize endOfDocument;

@synthesize inputDelegate;

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self commInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commInit];
    }
    return self;
}

- (void)commInit {
    _tokenizer = [[UITextInputStringTokenizer alloc] init];
}

- (void)tap {
    [self becomeFirstResponder];
}

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self becomeFirstResponder];
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesCancelled:touches withEvent:event];
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    return NO;
}

#pragma mark - UIKeyInput -
- (BOOL)hasText {
    return NO;
}
- (void)insertText:(NSString *)text {
    
}
- (void)deleteBackward {
    
}

#pragma mark - UITextInput -
- (NSString *)textInRange:(UITextRange *)range {
    return nil;
}
- (void)replaceRange:(UITextRange *)range withText:(NSString *)text {
    
}

- (void)setMarkedText:(NSString *)markedText selectedRange:(NSRange)selectedRange {
    
}

- (void)unmarkText {
    
}

- (UITextRange *)textRangeFromPosition:(UITextPosition *)fromPosition toPosition:(UITextPosition *)toPosition {
    return nil;
}

- (UITextPosition *)positionFromPosition:(UITextPosition *)position offset:(NSInteger)offset {
    return nil;
}

- (UITextPosition *)positionFromPosition:(UITextPosition *)position inDirection:(UITextLayoutDirection)direction offset:(NSInteger)offset {
    return nil;
}

- (NSComparisonResult)comparePosition:(UITextPosition *)position toPosition:(UITextPosition *)other {
    return NSOrderedSame;
}

- (NSInteger)offsetFromPosition:(UITextPosition *)from toPosition:(UITextPosition *)toPosition {
    return 0;
}

- (UITextInputStringTokenizer *)tokenizer {
    return _tokenizer;
}

- (UITextPosition *)positionWithinRange:(UITextRange *)range farthestInDirection:(UITextLayoutDirection)direction {
    return nil;
}

- (UITextRange *)characterRangeByExtendingPosition:(UITextPosition *)position inDirection:(UITextLayoutDirection)direction {
    return nil;
}

- (UITextWritingDirection)baseWritingDirectionForPosition:(UITextPosition *)position inDirection:(UITextStorageDirection)direction {
    return UITextWritingDirectionLeftToRight;
}

- (void)setBaseWritingDirection:(UITextWritingDirection)writingDirection forRange:(UITextRange *)range {
    
}

- (CGRect)firstRectForRange:(UITextRange *)range {
    return CGRectZero;
}

- (CGRect)caretRectForPosition:(UITextPosition *)position {
    return CGRectZero;
}

- (NSArray *)selectionRectsForRange:(UITextRange *)range {
    return nil;
}

- (UITextPosition *)closestPositionToPoint:(CGPoint)point {
    return nil;
}
- (UITextPosition *)closestPositionToPoint:(CGPoint)point withinRange:(UITextRange *)range {
    return nil;
}
- (UITextRange *)characterRangeAtPoint:(CGPoint)point {
    return nil;
}

@end
