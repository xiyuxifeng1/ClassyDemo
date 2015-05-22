//
//  SimpleView.m
//  ClassyDemo
//
//  Created by wang hui on 15/5/19.
//  Copyright (c) 2015年 Aldelo. All rights reserved.
//

#import "SimpleView.h"
#import <Classy/Classy.h>
@implementation SimpleView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 190, 100)];
        view1.cas_styleClass = @"view1";
        
        UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, 300, 100, 100)];
        view2.cas_styleClass = @"view2";
        
        [self addSubview:view1];
        [self addSubview:view2];
        
        //masonry
    }
    return self;
}


@end
