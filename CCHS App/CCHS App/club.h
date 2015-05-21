//
//  club.h
//  CCHS App
//
//  Created by Katie on 5/12/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface club : NSObject

- (id)initWithDetails: (NSString*) n and: (NSString*) t and: (NSString*) day and: (NSString*) place and: (NSArray*) spon;
-(NSString *) getName;
-(NSString *) getTime;
-(NSString *) getDay;
-(NSString *) getPlace;
-(NSArray *) getSponsers;

@end
