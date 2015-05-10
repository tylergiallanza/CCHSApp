//
//  Schedule.m
//  CCHS App
//
//  Created by Hannah Gu on 5/9/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "Schedule.h"

@implementation Schedule


- (void)drawRect:(CGRect)rect {
    UIBezierPath *line = [[UIBezierPath alloc] init];
    [line moveToPoint:CGPointMake(self.bounds.size.width/2, 0)];
    [line addLineToPoint:CGPointMake(self.bounds.size.width/2, self.bounds.size.height)];
    for(int i = 1; i<10; i++){
        [line moveToPoint:CGPointMake(0, i*self.bounds.size.height/10)];
        [line addLineToPoint:CGPointMake(self.bounds.size.width,i*self.bounds.size.height/10)];
    }
    [[UIColor whiteColor] setStroke];
    [line stroke];

}


@end
