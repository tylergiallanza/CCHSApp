//
//  club.m
//  CCHS App
//
//  Created by Student on 5/12/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "club.h"

@interface club ()

@property NSString *name;
@property NSString *meetingDay;
@property NSString *meetingTime;
@property NSArray *nicknames;


@end




@implementation club

- (id)initWithName: (NSString*) n{
    self = [super init];
    if(self){
     
        _name = n;
    
    }
    return self;
}

-(void) setTimeNumbers: (NSInteger *) hour and: (NSInteger *) min{
    //_meetingTime = [NSString stringWithFormat:(@"%l:&l", hour, min )];
}



@end
