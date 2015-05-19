//
//  BellViewController.m
//  CCHS App
//
//  Created by Student on 5/6/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "BellViewController.h"

static BOOL Assembly;

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
@property NSMutableArray *Schedule;

@end

@implementation BellViewController

-(void) viewWillAppear:(BOOL)animated{
    NSLog(@"viewWillAppear - bell");
}
- (void)viewDidLoad {
    
    [super viewDidLoad];
    NSLog(@"bell controller");
    self.RegularTimes = [[NSMutableArray alloc] init];
    self.StormTimes = [[NSMutableArray alloc] init];
    self.AssemblyTimes = [[NSMutableArray alloc] init];
    self.CollabTimes = [[NSMutableArray alloc] init];
    self.Schedule = [[NSMutableArray alloc] init];
    self.Schedule = self.RegularTimes;
    self.date = [[NSDate alloc] init];
    self.CollabDates = [[NSMutableArray alloc] init];
    self.AssemblyDates = [[NSMutableArray alloc] init];
    Assembly = NO;
    [self addDates];
    [self loadTimes];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.timeStyle = NSDateFormatterShortStyle;
    NSString *curTime = [dateFormatter stringFromDate:self.date];
    NSLog(curTime);
    dateFormatter.dateStyle = NSDateFormatterShortStyle;
    dateFormatter.timeStyle = NSDateFormatterNoStyle;
    NSString *curDay = [dateFormatter stringFromDate:self.date];
    NSLog(curDay);
    
    for(int i = 0; i<self.CollabDates.count; i++){
        NSString *day = [self.CollabDates objectAtIndex:i];
        if([curDay isEqualToString:day]){
            self.CurSchedule.text = @"Collaboration Day Schedule";
            self.Schedule = self.CollabTimes;
            self.Per11.text = @"Collaboration \nPeriod";
        }
    }
    for(int i = 0; i<self.AssemblyDates.count; i++){
        NSString *day = [self.AssemblyDates objectAtIndex:i];
        if([curDay isEqualToString:day]){
            self.CurSchedule.text = @"Assembly Schedule";
            self.Schedule = self.AssemblyTimes;
            Assembly = YES;
        }
    }
    
    for(int i = 0; i<self.Schedule.count; i++){
        UILabel *label = [self.Times objectAtIndex:i];
        label.text = [self.Schedule objectAtIndex:i];
    }
    
    [self processTimes:curTime and:self.Schedule];

}

- (void) addDates{
    
    [self.CollabDates addObject: @"10/10/14"];
    [self.CollabDates addObject: @"12/3/14"];
    [self.CollabDates addObject: @"1/28/15"];
    [self.CollabDates addObject: @"3/18/15"];
    [self.CollabDates addObject: @"4/15/15"];
    
}

- (void) processTimes: (NSString *) time and: (NSMutableArray*) schedule{
    
    NSString *symbol = [time substringFromIndex:time.length-2];
    if([symbol isEqualToString:@"PM"]){
         if(![[time substringToIndex:2] isEqualToString:@"12"]){
             time = [self convertToMilitary:time];
         }
    }else{
        if([[time substringToIndex:2] isEqualToString:@"12"]){
            time = [self convertToMilitary: time];
        }
    }
    
    NSString *first = [schedule objectAtIndex:0];
    int index = 0;
    for(int i = 0; i<first.length; i++){
        if([first characterAtIndex:i] == ' '){
            index = i;
        }
    }
    NSString *compTime = [[schedule objectAtIndex:0] substringToIndex:index];
    NSComparisonResult result = [time compare: compTime];
    if(result == NSOrderedAscending || result == NSOrderedSame){
        self.CurTime.text = [schedule objectAtIndex:0];
    }else{
        self.CurTime.hidden = YES;
        self.CurPeriod.text = @"Nothing currently.";

    }
    for(int i = 0; i<schedule.count-1; i++){
        result = [time compare: [self convertToMilitary: [self getTime: [schedule objectAtIndex:i]]]];
        if(result == NSOrderedDescending){
            self.CurTime.text = [schedule objectAtIndex:i+1];
            if(i==0){
                self.CurPeriod.text = @"Period 11";
            }else if(i==10){
                self.CurPeriod.text = @"Assembly";
            }else{
                self.CurPeriod.text = [NSString stringWithFormat:@"%s%d", "Period ", i];
            }
        }
    }
    result = [time compare: [self convertToMilitary: [self getTime: [schedule objectAtIndex:schedule.count-1]]]];
    if(result == NSOrderedDescending){
        self.CurTime.hidden = YES;
        self.CurPeriod.text = @"Nothing currently.";
    }
    
}

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

- (NSString *) convertToMilitary: (NSString *) time {
    int index = 0;
    for(int i = 0; i<time.length; i++){
        if([time characterAtIndex:i]==':'){
            index = i;
        }
    }
    NSString *hour = [time substringToIndex:index];
    NSLog(hour);
    int value = [hour intValue];
    if(value == 12){
        value = 0;
    }else{
        value += 12;
    }
    NSString *milTime = [NSString stringWithFormat:@"%d%@", value, [time substringFromIndex:index]];
    return milTime;
}

- (void) loadTimes{
    
    NSString *label =[[NSString alloc] init];

    label = @"6:30 - 7:09";
    [self.RegularTimes addObject: label];
    label= @"7:10 - 8:01";
    [self.RegularTimes addObject: label];
    label = @"8:08 - 9:00";
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

+ (BOOL) Assembly{
    return Assembly;
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

