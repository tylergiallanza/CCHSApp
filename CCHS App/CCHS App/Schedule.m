//
//  Schedule.m
//  CCHS App
//
//  Created by Hannah Gu on 5/9/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "Schedule.h"
#import "BellViewController.h"

@implementation Schedule


- (void)drawRect:(CGRect)rect {
    int numLines = 10;
    if([BellViewController Assembly]){
        numLines = 11;
    }
    UIBezierPath *line = [[UIBezierPath alloc] init];
    [line moveToPoint:CGPointMake(self.bounds.size.width/2, 0)];
    [line addLineToPoint:CGPointMake(self.bounds.size.width/2, self.bounds.size.height)];
    for(int i = 1; i<numLines; i++){
        [line moveToPoint:CGPointMake(0, i*self.bounds.size.height/numLines)];
        [line addLineToPoint:CGPointMake(self.bounds.size.width,i*self.bounds.size.height/numLines)];
    }
    [[UIColor whiteColor] setStroke];
    [line stroke];

}


@end
