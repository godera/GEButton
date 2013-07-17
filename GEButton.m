//
//  GEButton.m
//  test
//
//  Created by God Era on 3/5/13.
//  Copyright (c) 2013 God Era. All rights reserved.
//

#import "GEButton.h"

@implementation GEButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

+(id)buttonWithType:(UIButtonType)buttonType
{
    if (buttonType == UIButtonTypeRoundedRect) {
        UIButton* btn = [UIButton new];
        btn.clipsToBounds = YES;
        btn.layer.cornerRadius = 4;
        btn.showsTouchWhenHighlighted = YES;
        [btn.titleLabel setShadowColor:[UIColor blackColor]];
        [btn.titleLabel setShadowOffset:CGSizeMake(0, 0.3)];
        //        btn.layer.borderColor = [UIColor grayColor].CGColor;
        //        btn.layer.borderWidth = 1.0f;
        [btn setBackgroundImage:[self imageFromColor:[UIColor colorWithRed:40.0/255.0 green:215.0/255.0 blue:240.0/255.0 alpha:1.0f]] forState:UIControlStateHighlighted];
        [btn setNeedsDisplay];
        return [btn autorelease];
    }else{
        return [super buttonWithType:buttonType];
    }
}

+ (UIImage *)imageFromColor:(UIColor *)color
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

@end
