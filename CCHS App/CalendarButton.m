//
//  CalendarButton.m
//  TestCal
//
//  Created by Student on 5/7/15.
//  Copyright (c) 2015 Student. All rights reserved.
//

#import "CalendarButton.h"

@implementation CalendarButton

UILabel *date;
//bool busy = false;


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    //CGContextRef c = UIGraphicsGetCurrentContext();
    if(_busy==1) {
        //if there is stuff on the schedule draw a dot to indicate
    CGContextRef c = UIGraphicsGetCurrentContext();
    [[UIColor lightGrayColor] setFill];
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(self.frame.size.width/2-self.frame.size.width/8, self.frame.size.height*3/4-self.frame.size.width/8, self.frame.size.width/4, self.frame.size.width/4)];
    path.lineWidth  = 2.0;
    [path fill];
    }
}

//-(void)setBusy:(BOOL)isBusy {
    //busy = isBusy;
    //if(busy)
    //    NSLog(@"i am busy");
    //[self setNeedsDisplay];
//}


-(void)setDate:(NSString *)text {
    date.text = text;
    date.font = [UIFont fontWithName:@"Helvetica" size:13.0f];
}

-(void)setup:(BOOL)isBusy {
    //init the text if it is busy
    date = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width/8*7-self.frame.size.width/5, self.frame.size.height/9, self.frame.size.width/8+self.frame.size.width/4, self.frame.size.height/8+self.frame.size.height/9)];
    [self addSubview:date];
    if(isBusy) {
        NSLog(@"im tryinf to draw");
        /*CGContextRef c = UIGraphicsGetCurrentContext();
        [[UIColor lightGrayColor] setFill];
        UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(self.frame.size.width/2-self.frame.size.width/8, self.frame.size.height*3/4-self.frame.size.width/8, self.frame.size.width/4, self.frame.size.width/4)];
        path.lineWidth  = 2.0;
        [path fill];*/
    }

}

@end
