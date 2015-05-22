//
//  BellViewController.m
//  CCHS App
//
//  Created by Student on 5/6/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "BellViewController.h"

static BOOL Assembly;
static BOOL Collab;

@interface BellViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Per11;
@property (weak, nonatomic) IBOutlet UILabel *CurPeriod;
@property (weak, nonatomic) IBOutlet UILabel *CurTime;
@property (weak, nonatomic) IBOutlet UILabel *CurSchedule;
@property (strong, nonatomic) IBOutletCollection(UILabel) NSMutableArray *Times;
@property NSMutableArray *RegularTimes;
@property NSMutableArray *StormTimes;
@property NSMutableArray *AssemblyTimes;
@property NSMutableArray *CollabTimes;
@property NSDate *date;
@property NSMutableArray *CollabDates;
@property NSMutableArray *AssemblyDates;
@property NSMutableArray *StormDates;
@property NSMutableArray *Schedule;
@property (weak, nonatomic) IBOutlet UILabel *AssemblyPer;
@property (weak, nonatomic) IBOutlet UILabel *AssemblyTime;

@end

@implementation BellViewController

-(void) viewWillAppear:(BOOL)animated{
    //NSLog(@"viewWillAppear - bell");
}
- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.RegularTimes = [[NSMutableArray alloc] init];
    self.StormTimes = [[NSMutableArray alloc] init];
    self.AssemblyTimes = [[NSMutableArray alloc] init];
    self.CollabTimes = [[NSMutableArray alloc] init];
    self.Schedule = [[NSMutableArray alloc] init];
    self.Schedule = self.RegularTimes;
    self.date = [[NSDate alloc] init];
    self.CollabDates = [[NSMutableArray alloc] init];
    self.AssemblyDates = [[NSMutableArray alloc] init];
    self.StormDates = [[NSMutableArray alloc] init];
    self.AssemblyPer.hidden = YES;
    self.AssemblyTime.hidden = YES;
    Assembly = NO;
    Collab = NO;
    
    //add the dates the schedules occur to the arrays of the schedules
    [self addDates:@"10/10/14" to:self.CollabDates];
    [self addDates:@"12/3/14" to:self.CollabDates];
    [self addDates:@"1/28/15" to:self.CollabDates];
    [self addDates:@"3/18/15" to:self.CollabDates];
    [self addDates:@"4/15/15" to:self.CollabDates];
    //[self addDates:@"5/22/15" to:self.AssemblyDates];
    
    [self loadTimes]; //load the times of each schedule
    
    //get the current date and current time
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.timeStyle = NSDateFormatterShortStyle;
    NSString *curTime = [dateFormatter stringFromDate:self.date];
    dateFormatter.dateStyle = NSDateFormatterShortStyle;
    dateFormatter.timeStyle = NSDateFormatterNoStyle;
    NSString *curDay = [dateFormatter stringFromDate:self.date];
    curTime = [self convertToMilitary:curTime and:NO]; //add a 0 to the current time if needed
    
    //check what the current schedule is and set the times to the times of that schedule
    for(int i = 0; i<self.CollabDates.count; i++){
        NSString *day = [self.CollabDates objectAtIndex:i];
        if([curDay isEqualToString:day]){
            self.CurSchedule.text = @"Collaboration Day Schedule";
            self.Schedule = self.CollabTimes;
            self.Per11.text = @"Collaboration";
            Collab = YES;
        }
    }
    for(int i = 0; i<self.AssemblyDates.count; i++){
        NSString *day = [self.AssemblyDates objectAtIndex:i];
        if([curDay isEqualToString:day]){
            self.CurSchedule.text = @"Assembly Schedule";
            self.Schedule = self.AssemblyTimes;
            //display the hidden label for the assembly period
            self.AssemblyTime.hidden = NO;
            self.AssemblyPer.hidden = NO;
            Assembly = YES;
        }
    }
    for(int i = 0; i<self.StormDates.count; i++){
        NSString *day = [self.StormDates objectAtIndex:i];
        if([curDay isEqualToString:day]){
            self.CurSchedule.text = @"Storm / Delayed Start Schedule";
            self.Schedule = self.StormTimes;
        }
    }
    
    //set the times in the labels to the times of the current schedule
    for(int i = 0; i<self.Times.count; i++){
        UILabel *label = [self.Times objectAtIndex:i];
        label.text = [self.Schedule objectAtIndex:i];
    }
    
    [self processTimes:curTime and:self.Schedule]; //determine the period the current time is in
    
}

//add date to a schedule
-(void) addDates: (NSString *) date to: (NSMutableArray *) schedule{
    [schedule addObject:date];
}

//process which period it is currently
- (void) processTimes: (NSString *) time and: (NSMutableArray*) schedule{
    time = [self convertToMilitary:time and:NO]; //add a 0 if needed to the hour of the current time
    NSString *symbol = [time substringFromIndex:time.length-2];
    time = [time substringToIndex:time.length-3];
    if([symbol isEqualToString:@"PM"]){
        //if the time is in the afternoon and must be converted to military time, add 12 hours to it
        if(![[time substringToIndex:2] isEqualToString:@"12"]){
            int index = 0;
            for(int i = 0; i<time.length; i++){
                if([time characterAtIndex:i] == ':'){
                    index = i;
                }
            }
            NSString *hr = [time substringToIndex:index];
            int hour = [hr intValue];
            hour += 12;
            time = [NSString stringWithFormat:@"%d%@", hour, [time substringFromIndex:index]];
        }
    }else{
        //if the hour is 12 am, convert it to 00 in military time
        if([[time substringToIndex:2] isEqualToString:@"12"]){
            time = [NSString stringWithFormat:@"%@%@", @"00", [time substringFromIndex:2]];
        }
    }
    
    //get the time that the first period of the day starts
    NSString *first = [schedule objectAtIndex:0];
    int index = 0;
    for(int i = 0; i<first.length; i++){
        if([first characterAtIndex:i] == ' '){
            index = i;
            break;
        }
    }
    NSString *compTime = [first substringToIndex:index];
    compTime = [self convertToMilitary:compTime and:NO];
    
    //compare the current time of the day to the time the first period fo the day starts
    NSComparisonResult result = [time compare: compTime];
    if(result == NSOrderedDescending || result == NSOrderedSame){
        self.CurTime.text = [schedule objectAtIndex:0];
        if(Collab){
            self.CurPeriod.text = @"Collaboration";
        }else{
            self.CurPeriod.text = @"Period 11";
        }
        //if the current time is greater than or equal to the time that the period starts, set the current period to the first period of the day
    }else{
        self.CurTime.text = @"Currently";
        self.CurPeriod.text = @"Nothing";
        //if the current time is before the first period starts, state there is currently nothing
    }
    
    //compare the current time to the ending times of the periods in the schedule
    for(int i = 0; i<schedule.count-1; i++){
        result = [time compare: [self convertToMilitary: [self getTime: [schedule objectAtIndex:i]] and: YES]];
        
        //if the current time comes after the time that the period at i ends, set the current period to the next period
        if(result == NSOrderedDescending){
            self.CurTime.text = [schedule objectAtIndex:i+1];
            if(Assembly==YES && i==10){
                self.CurPeriod.text = @"Assembly";
            }else{
                self.CurPeriod.text = [NSString stringWithFormat:@"%s%d", "Period ", i+1];
            }
            //if the current time is in a period and not a new one, break
        }else{
            break;
        }
    }
    
    //if the current time is past the ending time of the last period of the day, print out that there is currently nothing
    NSString *mil = [self convertToMilitary: [self getTime: [schedule objectAtIndex:schedule.count-1]] and:YES];
    result = [time compare: mil];
    if(result == NSOrderedDescending){
        self.CurTime.text = @"Currently";
        self.CurPeriod.text = @"Nothing";
    }
    
}

//gets the ending time of a certain period
- (NSString *) getTime: (NSString *) time{
    int index = 0;
    for(int i = 0; i<time.length; i++){
        if([time characterAtIndex:i] == '-'){
            index = i;
        }
    }
    time = [time substringFromIndex:index+2];
    return time;
}

//converts a time to military time
- (NSString *) convertToMilitary: (NSString *) time and: (BOOL) convert{
    
    NSString *t = [[NSString alloc] init];
    
    //find the hour component of the time
    int index = 0;
    for(int i = 0; i<time.length; i++){
        if([time characterAtIndex:i]==':'){
            index = i;
        }
    }
    NSString *hour = [time substringToIndex:index];
    int value = [hour intValue];
    
    //if the hour component is in the afternoon of the schedule times and should be converted to military time, convert it
    if(convert){
        if(value<6){
            value += 12;
        }
    }
    
    //convert the new hour to a string
    if(value<10){
        t = [NSString stringWithFormat:@"%d%d",0,value];
        //add a 0 before the hour if the hour is one digit
    }else{
        t = [NSString stringWithFormat:@"%d",value];
    }
    
    //add the minutes to the hours in military time and return the military time
    NSString *milTime = [NSString stringWithFormat:@"%@%@", t, [time substringFromIndex:index]];
    return milTime;
}

- (void) loadTimes{
    
    NSString *label =[[NSString alloc] init];
    
    //load the times of a regular school day
    label = @"6:30 - 7:09";
    [self.RegularTimes addObject: label];
    label= @"7:10 - 8:01";
    [self.RegularTimes addObject: label];
    label = @"8:08 - 8:59";
    [self.RegularTimes addObject: label];
    label = @"9:06 - 10:01";
    [self.RegularTimes addObject: label];
    label = @"10:08 - 10:59";
    [self.RegularTimes addObject: label];
    label = @"11:06 - 11:57";
    [self.RegularTimes addObject: label];
    label = @"12:04 - 12:55";
    [self.RegularTimes addObject: label];
    label = @"1:02 - 1:53";
    [self.RegularTimes addObject: label];
    label = @"2:00 - 2:51";
    [self.RegularTimes addObject: label];
    
    //load the times of a storm or delayed start day
    label = @"7:00 - 7:39";
    [self.StormTimes addObject: label];
    label = @"7:50 - 8:28";
    [self.StormTimes addObject: label];
    label = @"8:35 - 9:23";
    [self.StormTimes addObject: label];
    label = @"9:29 - 10:17";
    [self.StormTimes addObject: label];
    label = @"10:24 - 11:12";
    [self.StormTimes addObject: label];
    label = @"11:19 - 12:07";
    [self.StormTimes addObject: label];
    label = @"12:14 - 1:02";
    [self.StormTimes addObject: label];
    label = @"1:09 - 1:57";
    [self.StormTimes addObject: label];
    label = @"2:04 - 2:51";
    [self.StormTimes addObject: label];
    
    //load the times of assembly day
    label = @"6:30 - 7:09";
    [self.AssemblyTimes addObject: label];
    label = @"7:10 - 7:54";
    [self.AssemblyTimes addObject: label];
    label = @"8:01 - 8:46";
    [self.AssemblyTimes addObject: label];
    label = @"8:52 - 9:39";
    [self.AssemblyTimes addObject: label];
    label = @"9:46 - 10:30";
    [self.AssemblyTimes addObject: label];
    label = @"10:37 - 11:21";
    [self.AssemblyTimes addObject: label];
    label = @"11:28 - 12:12";
    [self.AssemblyTimes addObject: label];
    label = @"12:19 - 1:03";
    [self.AssemblyTimes addObject: label];
    label = @"1:10 - 1:54";
    [self.AssemblyTimes addObject: label];
    label = @"2:01 - 2:51";
    [self.AssemblyTimes addObject: label];
    
    //load the times of a collaboration day
    label = @"7:00 - 8:00";
    [self.CollabTimes addObject: label];
    label = @"8:10 - 8:54";
    [self.CollabTimes addObject: label];
    label = @"9:01 - 9:45";
    [self.CollabTimes addObject: label];
    label = @"9:51 - 10:35";
    [self.CollabTimes addObject: label];
    label = @"10:42 - 11:26";
    [self.CollabTimes addObject: label];
    label = @"11:33 - 12:17";
    [self.CollabTimes addObject: label];
    label = @"12:24 - 1:08";
    [self.CollabTimes addObject: label];
    label = @"1:15 - 1:59";
    [self.CollabTimes addObject: label];
    label = @"2:06 - 2:51";
    [self.CollabTimes addObject: label];
    
    
    
}

//returns if it is an assembly day
+ (BOOL) Assembly{
    return Assembly;
}

//return if it is a collaboration day
+(BOOL) Collab{
    return Collab;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

