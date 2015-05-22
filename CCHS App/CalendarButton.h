//
//  CalendarButton.h
//  TestCal
//
//  Created by Student on 5/7/15.
//  Copyright (c) 2015 Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalendarButton : UIButton

@property int busy;
-(void)setup:(BOOL)isBusy;
//-(void)setBusy:(BOOL)isBusy;
-(void)setDate:(NSString*)text;

@end
