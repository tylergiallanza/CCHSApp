//
//  ClubViewController.m
//  CCHS App
//
//  Created by Student on 5/6/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "ClubViewController.h"
#import "club.h"

@interface ClubViewController ()

@property NSMutableArray* clubs;

@end

@implementation ClubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"club");
    
    _clubs = [[NSMutableArray alloc] init];
    //for(int i=0; i<10; i++){
        // lis of clubs?
    //}
    
    //reasons why I did this the hard way
        //the file has the times all in different format and that bothered me so I would have to change that any way
        //some of the clubs are not really clubs but classes so those needed to be taken out
        //the days are also writen in different formats and would have to be changed
        //there are cpitalization issues in the file
        //the file is formated wierd making it hard to read
    NSMutableArray *s = [[NSMutableArray alloc] init];
    [s addObject:@"Lucas Nkwelle"];
    [_clubs addObject: [[club alloc] initWithDetails: @"4 Quarters 4 Kids" and: @"" and: @"Every other Tuesday" and: @"W92" and: s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Marcus McDavid"];
    [s addObject:@"Noah Zeplin"];
    [_clubs addObject: [[club alloc] initWithDetails: @"AALC" and: @"" and: @"" and: @"" and: s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Chris Win"];
    [s addObject:@"Dayna Perez"];
    [s addObject:@"Jeff Boyce"];
    [s addObject:@"Jose Murillo"];
    [_clubs addObject: [[club alloc] initWithDetails:@"ALMA" and:@"" and:@"First Thursday of each month" and:@"Counseling Office" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Kerstin Daum-Schultz"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Amnesty International" and: @"3:00 to 4:00 pm" and:@"Every other Monday" and:@"IC742" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"David Stallings"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Animation Film Making" and: @"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Paul Anderson"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Anime Club" and: @"3:00 to 5:00 pm" and:@"Monday" and:@"W435" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Julie Brookes"];
    [_clubs addObject: [[club alloc] initWithDetails:@"B.R.U.I.N.S. Squad" and: @"3:00 to 4:00 pm" and:@"Two Mondays a month" and:@"W304" and:s ]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Denise Lantz"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Beyond the Bell" and: @"3:00 to 4:00 pm" and:@"Tuesdays and Thursday" and:@"IC715/717" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Anne DeWeese "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Bible Club" and: @"3:00 to 4:00 pm" and:@"Two Wednesdays a  month" and:@"E310" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Katie Taylor"];
    [s addObject:@"Jamie Weber"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Big Sisters" and:@"3:00 to 4:00 pm" and:@"Every other Monday and Wednesday" and:@"FA601" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Kimberly Shuman Smith"];
    [s addObject:@"Mary Morgan"];

    [_clubs addObject: [[club alloc] initWithDetails:@"Botanica @ Creek " and:@"3:15 to 4:15 pm" and: @"" and:@"Greenhouse (W545)" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Mike Barrett"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Capture the Flag" and:@"3:00 to 4:15 pm" and:@"Monday" and:@"Quad" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
     [_clubs addObject: [[club alloc] initWithDetails:@"Chess Club" and: @"" and: @"" and: @"" and: s ]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jack Song"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Chinese Club" and: @"" and:@"" and:@"W301" and: s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jack Song"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Chinese Honor Society" and:@"" and:@"" and:@"W301" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Katie Hester"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Colorado Teen Effect" and:@"5:00 to 6:00 pm" and: @"One Thursday a month" and:@"IC734" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"T.Morris"];
    [s addObject:@"M.Goeglein"];
    [s addObject:@"T.Kirkpatrick"];
    [_clubs addObject: [[club alloc] initWithDetails:@"COLT" and:@"3:15 to 4:30pm" and:@"The 3rd Tuesday of the month" and:@"W201" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Tom Michel "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Comic Book Club" and:@"3:00 to 4:30" and: @"" and: @"E403" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Keith Harrison "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Cubing Club" and:@"3:00 to 4:00 pm" and:@"Wednesday" and:@"W432" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jocelyn Nguyen "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Cybersecurity Club" and:@"3:00 to 4:30pm" and:@"Wednesday" and:@"W431" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"J.Konrad"];
     [s addObject:@"B.Adolphi"];
     [s addObject:@"D.Sheeks"];
    [_clubs addObject: [[club alloc] initWithDetails:@"DECA" and:@"5th period" and:@"Wednesday" and:@"W218/W220" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Mary Ann Goff"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Destination Imagination" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Leigh Vinzant"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Dia(BEAT)es Club" and:@"6:30 to 7:00 am" and:@"Wednesday" and:@"W102" and:s]];
   s = [[NSMutableArray alloc] init];
    [s addObject:@"Marjorie Hamburger"];
     [s addObject:@"Tess Simpson"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Diversity Task Force" and:@"5:00 to 6:30 pm" and:@"Thursday" and:@"Community Rooms" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Mary Chapman"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Doctor Who Club" and:@"3:00 to 4:30 pm" and: @"Every Other Tuesday" and:@"E207" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"David Knoeckel"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Drummers on Buckets" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Dave Benson"];
    [s addObject:@"Ben Singh"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Excalibur" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Michael Goodman"];
     [s addObject:@"Susan Shaw"];
    [_clubs addObject: [[club alloc] initWithDetails:@"FBLA" and: @"3:00 to 3:30 pm" and:@"Wednesday" and:@"W214" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Sasha Gartin "];
    [_clubs addObject: [[club alloc] initWithDetails:@"FCCLA " and:@"3:00 to 4:00 pm" and:@"first Thursday of the month" and:@"W207/W209" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Mark Goldsberry"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Fellowship of Christian Athletes" and:@"6:15 to 7:00 am" and:@"Friday" and:@"Shillinglaw" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Dave Stallings"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Figure Drawing" and:@"3:00 pm" and:@"Monday" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"David Gamelin"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Film Club" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Susie Russell"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Fine Print" and:@"3:00 to 4:30 pm" and:@"Monday" and:@"E211" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Paul Cronin"];
    [_clubs addObject: [[club alloc] initWithDetails:@"French Club" and:@"3:00 to 4:00" and:@"Monday" and:@"IC747" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Susan Bowditch "];
    [_clubs addObject: [[club alloc] initWithDetails:@"French Honor Society" and:@"3:00 to 5:00 pm" and:@"Monday/Wednesday" and:@"W302" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Matt Buddington"];
     [s addObject:@"Dan Draper"];
     [s addObject:@"Chris Meagher"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Frisbee Golf Club" and:@"3:00 to 4:45 pm" and:@"Tuesday" and:@"Village Greens Park" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Virginia DeCesare"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Future Soldiers of America" and:@"3:00 to 3:45 pm" and:@"Every other Tuesday" and:@"E113" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Susanne Smith"];
    [_clubs addObject: [[club alloc] initWithDetails:@"German Club" and:@"3:00 to 4:00 pm" and:@"Thursday" and:@"IC742" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Susanne Smith"];
    [_clubs addObject: [[club alloc] initWithDetails:@"German Honor Society" and: @"3:00 to 4:00 pm" and:@"Tuesday" and: @"IC742"  and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Harry Potter Club" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Noah Zepelin "];
    [_clubs addObject: [[club alloc] initWithDetails:@"History Club" and:@"5th period" and:@"" and:@"E118" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jay Stribling "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Huddle Club" and:@"6:00 to 7:30 pm" and:@"Wednesday" and:@"Library" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Lucas Nkwelle"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Interact Club" and:@"3:00 pm" and:@"Every other Thursday" and:@"W90" and:s ]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Joelle Hogue"];
    [_clubs addObject: [[club alloc] initWithDetails:@"International Exchange Club" and: @"3:00 to 4:00 pm" and:@"Tuesday" and: @"W548" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jim Young"];
     [s addObject:@"Jessica Olsen "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Jewish Student Connection" and:@"3:00 to 4:00 pm" and:@"" and:@"E300" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Karl Mimmack"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Juggling/Unicycling Club" and:@"6:00 to 7:00 am" and:@"Friday" and:@"W435" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"DeeDee Hicks"];
     [s addObject:@"Stephen Smith"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Key Club" and:@"3:00 to 6:00 pm" and:@"2nd and 4th Thursdays" and:@"West resource Center" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Yoon Park"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Korean Club" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject: @"Greg Critchett"];
     [_clubs addObject: [[club alloc] initWithDetails: @"L.E.G.O.S." and: @"" and: @"" and: @"" and:s ]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Amy Sommer"];
    [s addObject:@"Scott Holcomb"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Latin Club" and:@"" and:@"" and:@"IC716" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
     [_clubs addObject: [[club alloc] initWithDetails:@"Linking Hearts" and: @"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Tim Libby"];
     [s addObject:@"Sara Wynes "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Marching Band/Color Guard" and:@"3:30 to 6:30 pm" and:@"Monday, Wednesday, and Thursday" and:@"FA640 " and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Dotty Dady"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Math Club" and:@"3:00 to 4:00 pm" and:@"Tuesday" and:@"W306" and:s]];

    s = [[NSMutableArray alloc] init];
    [s addObject:@"David Valdez"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Model UN" and:@"3:00 to 4:00 pm" and:@"Thursday" and:@"IC738" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Gina Guy"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Muslim Student Alliance" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Joelle Hogue"];
    [_clubs addObject: [[club alloc] initWithDetails:@"My Little Pony Club" and:@"3:00 to 4:00 pm" and:@"Every other Thursday" and:@"W551" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"David Stallings"];
     [s addObject:@"Efong Yee"];
    [_clubs addObject: [[club alloc] initWithDetails:@"National Art Honor Society" and:@"3:00 to 4:00 pm" and:@"Every other Wednesday" and:@"FA603" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Martha Benham"];
     [s addObject:@"Erin Baxley"];
     [s addObject:@"Karl Mimmack"];
    [_clubs addObject: [[club alloc] initWithDetails:@"National Honor Society" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Renee Dupont"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Nourish International" and:@"3:00 pm" and:@"Every other Tuesday" and:@"E203" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Nancy Eads"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Open Arms" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Lisa Wiese"];
    [s addObject:@"N.Jasurda"];
    [s addObject:@"S.Johnson"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Peer Ambassadors" and:@"5th period" and:@"Tuesday" and:@"IC736" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Tim Libby"];
     [s addObject:@"Allison Greenbaum"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Percussion Ensemble" and:@"3:30 to 6:30 pm" and:@"Monday and Wednesday" and:@"FA640" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Todd Adams"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Photography Club" and:@"3:15 to 4:15 pm" and:@"Wednesday (2nd semester)" and:@"CTE" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Clyde Oakley "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Physics Club" and:@"3:00 pm" and:@"" and:@"W527" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Pinterest" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Karl Mimmack "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Play Strong" and:@"6:20 to 7:00 am" and:@"Thursday" and:@"W435" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Matt Gustafson "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Poetry Club" and:@"3:00 pm" and:@"Every other Thursday" and:@"IC746" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Pokemon Club" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Krista Keogh"];
    [_clubs addObject: [[club alloc] initWithDetails:@"President's Club" and:@"5th period" and:@"Thursday" and:@"South Community Rooom" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Kent Dertinger"];
    [s addObject:@"Kim Dertinger"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Recycling Club" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Igor Tomcej"];
    [s addObject:@"Jill Carlson"];
     [s addObject:@"Chris Danos"];
    [s addObject:@"Kevin Harrell"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Robotics Team Club" and:@"" and:@"Monday, Tuesday, Wednesday, Thursday, and Saturday" and:@"W557/W431" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Michael Goodman"];
    [_clubs addObject: [[club alloc] initWithDetails:@"S.A.C.A." and:@"3:00 to 3:30 pm" and:@"Mondays" and:@"W214" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Christine Garcia"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Suicide Prevention of Teens (SPOT)" and:@"3:00 to 4:00 pm" and:@"Tuesday" and:@"W104" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jeremy Gilbert "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Science Bowl" and:@"3:00 to 4:00 pm" and:@"Wednesday" and:@"W105" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Clyde Oakley"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Science Olympiad" and:@"3:00 pm" and:@"Friday" and:@"W527" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jen Jones "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Sign Language Club" and:@"3:00 to 4:30 pm" and:@"Every other Thursday" and:@"IC740" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"M.Goeglein"];
    [s addObject:@"T.Morris"];
    [_clubs addObject: [[club alloc] initWithDetails:@"SOAR" and:@"3:15 to 4:30 pm" and:@"First Tuesday of the month" and:@"W201" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Social Seminar" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Catie Broznak"];
    [s addObject:@"Kevin Horrell "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Space Settlement Design Club" and:@"3:00 to 5:00 pm" and:@"Wednesday (Monday first quarter)" and:@"W531" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
    [_clubs addObject: [[club alloc] initWithDetails: @"Spanish Club" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Susan Mosby"];
    [s addObject:@"Sarah Campbell"];
    [_clubs addObject: [[club alloc] initWithDetails: @"Spanish Honor Society" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Kerstin Daum-Schultz"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Spectrum-Gay/Straight" and:@"3:00 to 4:00 pm" and:@"Every other Monday" and:@"W531" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Marti Benham"];
    [s addObject:@"Carlye Holladay"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Speech and Debate" and:@"" and:@"" and:@"FA625" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"David Knoeckel"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Sports Broadcasting Club" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Sally Milian"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Step Club" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Krista Keogh"];
    [s addObject:@"Matt Weiss"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Student Senate" and:@"8th period" and:@"Monday through Friday" and:@"IC715" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jim Miller"];
    [s addObject:@"Mhari Doyle"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Theater Productions" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jocelyn Nguyen "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Tech Club" and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Loreen Hughes "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Union Street Journal" and:@"3:00 to 4:30 pm" and:@"Two Mondays a month" and:@"1C703" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Video Game Club " and:@"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Tim Libby"];
    [s addObject:@"Mark Keating"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Winter Guard" and:@"3:30 to 6:30pm" and:@"Monday through Friday" and:@"FA640" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jim Young "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Writing Club" and:@"3:00 to 4:00 pm" and:@"" and:@"E300" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Erica Padzik "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Yearbook" and:@"8th period" and:@"Monday through Friday" and:@"IC705" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Dave Benson"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Young Democrats" and:@"3:00 pm" and:@"Every other Monday" and:@"E113" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Tandy Babb "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Young Life Club" and:@"7:00 to 9:00 pm" and:@"Monday" and:@"IC Café" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Tom Michel "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Young Politicians" and:@"3:00 to 4:30pm" and:@"" and:@"E401" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Michael Mazenko"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Youth Advisory Board" and:@"3:00 to 4:00 pm" and:@"Monday" and:@"IC715" and:s]];
//

    
    

//    
//    

    
    
    
    
    //UIBarButtonItem *b = [[UIBarButtonItem alloc] initWithTitle:@"Back" style: UIBarStyleDefault target: self action: @selector(back)];
    //self.navigationItem.leftBarButtonItem = b;
                          
    // Do any additional setup after loading the view.
}

                          
-(IBAction)back:(id)sender{
    [self dismissViewControllerAnimated:YES completion: nil];
    

}

                    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return _clubs.count;
}
- (IBAction)culbSpecifics:(id)sender {
    
    CGPoint pointInView = [sender locationInView : self.tableView ];
    NSIndexPath *path = [self.tableView indexPathForRowAtPoint : pointInView];
    club *c = [_clubs objectAtIndex: path.row ];
    NSString *s = [[NSString alloc] init];
    for(int i =0; i< [[c getSponsers] count]; i++ ){
        if(i == 0){
            s = [NSString stringWithFormat: @"%@", [[c getSponsers] objectAtIndex: i]];;
        }else if((i + 1) == [[c getSponsers] count]){
            if(i == 1){
                s = [NSString stringWithFormat: @"%@ and %@", s, [[c getSponsers] objectAtIndex: i]];
            }else{
                s = [NSString stringWithFormat: @"%@, and %@", s, [[c getSponsers] objectAtIndex: i]];
            }
        }else{
            s = [NSString stringWithFormat: @"%@, %@", s, [[c getSponsers] objectAtIndex: i]];
        }
    }
    NSString *str = [NSString stringWithFormat:@"%@ \n %@ \n %@ \n\n Sponser(s): %@",[c getTime], [c getDay], [c getPlace], s];
    
  
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[c getName] message: str delegate:self cancelButtonTitle:@"Close" otherButtonTitles:nil];
    
//    UITextView *someTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 35, 250, 100)];
//    someTextView.backgroundColor = [UIColor whiteColor];
//    someTextView.textColor = [UIColor blackColor];
//    someTextView.editable = NO;
//    someTextView.font = [UIFont systemFontOfSize:15];
//    someTextView.text = @"Enter Text Here";
//    [alert addSubview:someTextView];
    [alert show];
    //[someTextView release];
    //[alert release];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [[_clubs objectAtIndexedSubscript:indexPath.row] getName];
    return cell;
}
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    
    return NO;
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
