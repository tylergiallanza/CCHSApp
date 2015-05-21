//
//  club.m
//  CCHS App
//
//  Created by Katie on 5/12/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "club.h"

@interface club ()

@property NSArray *sponsers;//the names of all of the sponsers
@property NSString *name;//the name of the club
@property NSString *meetingDay;//the day(s) of the week in which the club meets
@property NSString *meetingTime;//the time at which the club meets(preferably in the format start to end pm/am although some clubs didnt have an end time)
@property NSString *meetingPlace;//the room in which the club meets
//@property NSArray *nicknames;


@end




@implementation club


/**
 *initializing the club and adding the information in the form of params to the club
 * n- String format of the club name
 * t - string format of the time at which the club meets
 * day - string format of the day(s) on which the club meets
 * place - the string format of the room in which the club meets
 * spon - the array of all of the sponsers
 */
- (id)initWithDetails: (NSString*) n and: (NSString*) t and: (NSString*) day and: (NSString*) place and: (NSArray*) spon{
    self = [super init];
    if(self){
     
        _name = n;
        _meetingTime = t;
        _meetingDay = day;
        _meetingPlace = place;
        _sponsers = spon;
        
    
    }
    return self;
}

/**
 *returns the string of the name of the club
 *
 */
-(NSString *) getName{
    return _name;
}
/**
 *returns a string of the tome at which the club meets
 *
 */
-(NSString *) getTime{
    return _meetingTime;
}

/**
 *
 *returns a string of the day(s) on which the club meets
 */
-(NSString *) getDay{
    return _meetingDay;
}

/**
 *returns an array of the sponsers
 *
 */
-(NSArray *) getSponsers{
    return _sponsers;
}

/**
 * returns a string of the place at which the meeting is held
 *
 */
-(NSString *) getPlace{
    return _meetingPlace;
}





@end
