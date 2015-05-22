//
//  Assembly.m
//  CCHS App
//
//  Created by Student on 5/19/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "Assembly.h"

@implementation Assembly


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    //draw eleven lines for the assembly schedule view to separate the periods
    UIBezierPath *line = [[UIBezierPath alloc] init];
    [line moveToPoint:CGPointMake(self.bounds.size.width/2, 0)];
    [line addLineToPoint:CGPointMake(self.bounds.size.width/2, self.bounds.size.height)];
    for(int i = 1; i<11; i++){
        [line moveToPoint:CGPointMake(0, i*self.bounds.size.height/11)];
        [line addLineToPoint:CGPointMake(self.bounds.size.width,i*self.bounds.size.height/11)];
    }
    [[UIColor whiteColor] setStroke];
    [line stroke];
}


@end
