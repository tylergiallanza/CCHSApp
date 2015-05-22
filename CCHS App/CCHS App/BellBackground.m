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
    //draw a line to separate the current period from the current schedule
    int divide = 7;
    if([[UIScreen mainScreen] bounds].size.height>=736){
        divide = 6;
    }
    UIBezierPath *line = [[UIBezierPath alloc] init];
    [line moveToPoint:CGPointMake(0, self.bounds.size.height/divide)];
    [line addLineToPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height/divide)];
    line.lineWidth = 1.5;
    [[UIColor blueColor] setStroke];
    [line stroke];
}


@end
