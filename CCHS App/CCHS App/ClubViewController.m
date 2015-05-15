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
    [s addObject:@"kerstin daum-Schultz"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Amnesty International" and: @"3:00 to 4:00 pm" and:@"every other monday" and:@"IC742" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"David Stallings"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Animation Film Making" and: @"" and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Paul Anderson"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Anime Club" and: @"3:00 to 5:00 pm" and:@"Monday" and:@"W435" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Julie Brookes"];
    [_clubs addObject: [[club alloc] initWithDetails:@"B.R.U.I.N.S. Squad" and: @"3:00 to 4:00 pm" and:@"two mondays a month" and:@"W304" and:s ]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Denise Lantz"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Beyond the Bell" and: @"3:00 to 4:00 pm" and:@"Tuesdays and Thursday" and:@"IC715/717" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Anne DeWeese "];
    [_clubs addObject: [[club alloc] initWithDetails:@"Bible Club" and: @"3:00 to 4:00 pm" and:@"two wednesdays a  month" and:@"E310" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Katie Taylor"];
    [s addObject:@"Jamie Weber"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Big Sisters" and:@"3:00 to 4:00 pm" and:@"Every other Monday and Wednesday" and:@"FA601" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Kimberly Shuman Smith"];
    [s addObject:@"Mary Morgan"];
    [_clubs addObject: [[club alloc] initWithName:@"Botanica @ Creek "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Mike Barrett"];
    [_clubs addObject: [[club alloc] initWithName:@"Capture the Flag"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD];
    [_clubs addObject: [[club alloc] initWithName:@"Chess Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jack Song"];
    [_clubs addObject: [[club alloc] initWithName:@"Chinese Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jack Song"];
    [_clubs addObject: [[club alloc] initWithName:@"Chinese Honor Society"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Katie Hester"];
    [_clubs addObject: [[club alloc] initWithName:@"Colorado Teen Effect"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"T.Morris"];
    [s addObject:@"M.Goeglein"];
    [s addObject:@"T.Kirkpatrick"];
    [_clubs addObject: [[club alloc] initWithName:@"COLT"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Tom Michel "];
    [_clubs addObject: [[club alloc] initWithName:@"Comic Book Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Keith Harrison "];
    [_clubs addObject: [[club alloc] initWithName:@"Cubing Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jocelyn Nguyen "];
    [_clubs addObject: [[club alloc] initWithName:@"Cybersecurity Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"J.Konrad"];
     [s addObject:@"B.Adolphi"];
     [s addObject:@"D.Sheeks"];
    [_clubs addObject: [[club alloc] initWithName:@"DECA"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Mary Ann Goff"];
    [_clubs addObject: [[club alloc] initWithName:@"Destination Imagination"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Leigh Vinzant"];
    [_clubs addObject: [[club alloc] initWithName:@"Dia(BEAT)es Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Marjorie Hamburger"];
     [s addObject:@"Tess Simpson"];
    [_clubs addObject: [[club alloc] initWithName:@"Diversity Task Force"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Mary Chapman"];
    [_clubs addObject: [[club alloc] initWithName:@"Doctor Who Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"David Knoeckel"];
    [_clubs addObject: [[club alloc] initWithName:@"Drummers on Buckets"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Dave Benson"];
    [s addObject:@"Ben Singh"];
    [_clubs addObject: [[club alloc] initWithName:@"Excalibur"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Michael Goodman"];
     [s addObject:@"Susan Shaw"];
    [_clubs addObject: [[club alloc] initWithName:@"FBLA"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Sasha Gartin "];
    [_clubs addObject: [[club alloc] initWithName:@"FCCLA "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Mark Goldsberry"];
    [_clubs addObject: [[club alloc] initWithName:@"Fellowship of Christian Athletes"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Dave Stallings"];
    [_clubs addObject: [[club alloc] initWithName:@"Figure Drawing"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"David Gamelin"];
    [_clubs addObject: [[club alloc] initWithName:@"Film Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Susie Russell"];
    [_clubs addObject: [[club alloc] initWithName:@"Fine Print"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Paul Cronin"];
    [_clubs addObject: [[club alloc] initWithName:@"French Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Susan Bowditch "];
    [_clubs addObject: [[club alloc] initWithName:@"French Honor Society"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Matt Buddington"];
     [s addObject:@"Dan Draper"];
     [s addObject:@"Chris Meagher"];
    [_clubs addObject: [[club alloc] initWithName:@"Frisbee Golf Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Virginia DeCesare"];
    [_clubs addObject: [[club alloc] initWithName:@"Future Soldiers of America"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Susanne Smith"];
    [_clubs addObject: [[club alloc] initWithName:@"German Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Susanne Smith"];
    [_clubs addObject: [[club alloc] initWithName:@"German Honor Society"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
    [_clubs addObject: [[club alloc] initWithName:@"Harry Potter Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Noah Zepelin "];
    [_clubs addObject: [[club alloc] initWithName:@"History Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jay Stribling "];
    [_clubs addObject: [[club alloc] initWithName:@"Huddle Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Lucas Nkwelle"];
    [_clubs addObject: [[club alloc] initWithName:@"Interact Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Joelle Hogue"];
    [_clubs addObject: [[club alloc] initWithName:@"International Exchange Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jim Young"];
     [s addObject:@"Jessica Olsen "];
    [_clubs addObject: [[club alloc] initWithName:@"Jewish Student Connection"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Karl Mimmack"];
    [_clubs addObject: [[club alloc] initWithName:@"Juggling/Unicycling Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"DeeDee Hicks"];
     [s addObject:@"Stephen Smith"];
    [_clubs addObject: [[club alloc] initWithName:@"Key Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Yoon Park"];
    [_clubs addObject: [[club alloc] initWithName:@"Korean Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Greg Critchett];
    [_clubs addObject: [[club alloc] initWithName:@"L.E.G.O.S. "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Amy Sommer"];
    [s addObject:@"Scott Holcomb"];
    [_clubs addObject: [[club alloc] initWithName:@"Latin Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
    [_clubs addObject: [[club alloc] initWithName:@"Linking Hearts"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Tim Libby"];
     [s addObject:@"Sara Wynes "];
    [_clubs addObject: [[club alloc] initWithName:@"Marching Band/Color Guard"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Dotty Dady"];
    [_clubs addObject: [[club alloc] initWithName:@"Math Club "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"David Valdez"];
    [_clubs addObject: [[club alloc] initWithName:@"Model UN "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Gina Guy"];
    [_clubs addObject: [[club alloc] initWithName:@"Muslim Student Alliance"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Joelle Hogue"];
    [_clubs addObject: [[club alloc] initWithName:@"My Little Pony Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"David Stallings"];
     [s addObject:@"Efong Yee"];
    [_clubs addObject: [[club alloc] initWithName:@"National Art Honor Society"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Martha Benham"];
     [s addObject:@"Erin Baxley"];
     [s addObject:@"Karl Mimmack"];
    [_clubs addObject: [[club alloc] initWithName:@"National Honor Society"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Renee Dupont"];
    [_clubs addObject: [[club alloc] initWithName:@"Nourish International "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Nancy Eads"];
    [_clubs addObject: [[club alloc] initWithName:@"Open Arms "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Lisa Wiese"];
    [s addObject:@"N.Jasurda"];
    [s addObject:@"S.Johnson"];
    [_clubs addObject: [[club alloc] initWithName:@"Peer Ambassadors "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Tim Libby"];
     [s addObject:@"Allison Greenbaum"];
    [_clubs addObject: [[club alloc] initWithName:@"Percussion Ensemble"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Todd Adams"];
    [_clubs addObject: [[club alloc] initWithName:@"Photography Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Clyde Oakley "];
    [_clubs addObject: [[club alloc] initWithName:@"Physics Club "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
    [_clubs addObject: [[club alloc] initWithName:@"Pinterest "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Karl Mimmack "];
    [_clubs addObject: [[club alloc] initWithName:@"Play Strong"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Matt Gustafson "];
    [_clubs addObject: [[club alloc] initWithName:@"Poetry Club "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
    [_clubs addObject: [[club alloc] initWithName:@"Pokemon Club "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Krista Keogh"];
    [_clubs addObject: [[club alloc] initWithName:@"President's Club "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Kent Dertinger"];
    [s addObject:@"Kim Dertinger"];
    [_clubs addObject: [[club alloc] initWithName:@"Recycling Club "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Igor Tomcej"];
    [s addObject:@"Jill Carlson"];
     [s addObject:@"Chris Danos"];
    [s addObject:@"Kevin Harrell"];
    [_clubs addObject: [[club alloc] initWithName:@"Robotics Team Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Michael Goodman"];
    [_clubs addObject: [[club alloc] initWithName:@"S.A.C.A."]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Christine Garcia"];
    [_clubs addObject: [[club alloc] initWithName:@"Suicide Prevention of Teens"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jeremy Gilbert "];
    [_clubs addObject: [[club alloc] initWithName:@"Science Bowl"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Clyde Oakley"];
    [_clubs addObject: [[club alloc] initWithName:@"Science Olympiad"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jen Jones "];
    [_clubs addObject: [[club alloc] initWithName:@"Sign Language Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"M.Goeglein"];
    [s addObject:@"T.Morris"];
    [_clubs addObject: [[club alloc] initWithName:@"SOAR"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
    [_clubs addObject: [[club alloc] initWithName:@"Social Seminar"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Catie Broznak"];
    [s addObject:@"Kevin Horrell "];
    [_clubs addObject: [[club alloc] initWithName:@"Space Settlement Design Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
    [_clubs addObject: [[club alloc] initWithName:@"Spanish Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Susan Mosby"];
    [s addObject:@"Sarah Campbell"];
    [_clubs addObject: [[club alloc] initWithName:@"Spanish Honor Society "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Kerstin Daum Schultz"];
    [_clubs addObject: [[club alloc] initWithName:@"Spectrum-Gay/Straight Alliance"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Marti Benham"];
    [s addObject:@"Carlye Holladay"];
    [_clubs addObject: [[club alloc] initWithName:@"Speech and Debate "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"David Knoeckel"];
    [_clubs addObject: [[club alloc] initWithName:@"Sports Broadcasting Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Sally Milian"];
    [_clubs addObject: [[club alloc] initWithName:@"Step Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Krista Keogh"];
    [s addObject:@"Matt Weiss"];
    [_clubs addObject: [[club alloc] initWithName:@"Student Senate "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jim Miller"];
    [s addObject:@"Mhari Doyle"];
    [_clubs addObject: [[club alloc] initWithName:@"Theater Productions "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jocelyn Nguyen "];
    [_clubs addObject: [[club alloc] initWithName:@"Tech Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Loreen Hughes "];
    [_clubs addObject: [[club alloc] initWithName:@"Union Street Journal "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"TBD"];
    [_clubs addObject: [[club alloc] initWithName:@"Video Game Club "]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Tim Libby"];
    [s addObject:@"Mark Keating"];
    [_clubs addObject: [[club alloc] initWithName:@"Winter Guard"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Jim Young "];
    [_clubs addObject: [[club alloc] initWithName:@"Writing Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Erica Padzik "];
    [_clubs addObject: [[club alloc] initWithName:@"Yearbook"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Dave Benson"];
    [_clubs addObject: [[club alloc] initWithName:@"Young Democrats"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Tandy Babb "];
    [_clubs addObject: [[club alloc] initWithName:@"Young Life Club"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Tom Michel "];
    [_clubs addObject: [[club alloc] initWithName:@"Young Politicians"]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Michael Mazenko"];
    [_clubs addObject: [[club alloc] initWithName:@"Youth Advisory Board "]];
    
    
    
    
    
    
    
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
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[[_clubs objectAtIndex: path.row ] getName] message:@"\n\n Club Information \n\n" delegate:self cancelButtonTitle:@"Close" otherButtonTitles:nil];
    
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
