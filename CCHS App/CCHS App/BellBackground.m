//
//  BellBackground.m
//  CCHS App
//
//  Created by Hannah Gu on 5/16/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "BellBackground.h"

@implementation BellBackground


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    UIBezierPath *line = [[UIBezierPath alloc] init];
    [line moveToPoint:CGPointMake(0, self.bounds.size.height/7)];
    [line addLineToPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height/7)];
    line.lineWidth = 1.5;
    [[UIColor blueColor] setStroke];
    [line stroke];
}


@end
