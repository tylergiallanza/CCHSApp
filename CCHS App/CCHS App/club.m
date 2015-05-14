//
//  club.m
//  CCHS App
//
//  Created by Student on 5/12/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "club.h"

@interface club ()

@property NSArray *sponsers;
@property NSString *name;
@property NSString *meetingDay;
@property NSString *meetingTime;
@property NSString *meetingPlace;
@property NSArray *nicknames;


@end




@implementation club

- (id)initWithDetails: (NSString*) n and: (long*) hour and: (long*) min and: (NSString*) day and: (NSString*) place and: (NSArray*) spon{
    self = [super init];
    if(self){
     
        _name = n;
    
    }
    return self;
}

-(NSString *) getName{
    return _name;
}


-(void) setTimeNumbers: (long*) hour and: (long*) min{
    _meetingTime = [NSString stringWithFormat: @"%l:%l", hour, min ];
}



@end
