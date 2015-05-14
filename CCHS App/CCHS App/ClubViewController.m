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
    [_clubs addObject: [[club alloc] initWithDetails: @"4 Quarters 4 Kids" and: 0 and: 0 and: @"Every other Tuesday" and: @"W92" and: s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Marcus McDavid"];
    [s addObject:@"Noah Zeplin"];
    [_clubs addObject: [[club alloc] initWithDetails: @"AALC" and: 0 and: 0 and: @"" and: @"" and: s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Chris Win"];
    [s addObject:@"Dayna Perez"];
    [s addObject:@"Jeff Boyce"];
    [s addObject:@"Jose Murillo"];
    [_clubs addObject: [[club alloc] initWithDetails:@"ALMA" and:0 and:0 and:@"First Thursday of each month" and:@"Counseling Office" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"kerstin daum-Schultz"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Amnesty International" and:3 and:0 and:@"every other monday" and:@"IC742" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"David Stallings"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Animation Film Making" and:0 and:0 and:@"" and:@"" and:s]];
    s = [[NSMutableArray alloc] init];
    [s addObject:@"Paul Anderson"];
    [_clubs addObject: [[club alloc] initWithDetails:@"Anime Club" and:3 and:0 and:@"Monday" and:@"W435" and:s]];
//    [_clubs addObject: [[club alloc] initWithName:@"B.R.U.I.N.S. Squad"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Beyond the Bell"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Bible Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Big Sisters"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Botanica @ Creek "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Capture the Flag"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Chess Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Chinese Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Chinese Honor Society"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Colorado Teen Effect"]];
//    [_clubs addObject: [[club alloc] initWithName:@"COLT"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Comic Book Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Cubing Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Cybersecurity Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"DECA"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Destination Imagination"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Dia(BEAT)es Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Diversity Task Force"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Doctor Who Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Drummers on Buckets"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Excalibur"]];
//    [_clubs addObject: [[club alloc] initWithName:@"FBLA"]];
//    [_clubs addObject: [[club alloc] initWithName:@"FCCLA "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Fellowship of Christian Athletes"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Figure Drawing"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Film Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Fine Print"]];
//    [_clubs addObject: [[club alloc] initWithName:@"French Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"French Honor Society"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Frisbee Golf Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Future Soldiers of America"]];
//    [_clubs addObject: [[club alloc] initWithName:@"German Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"German Honor Society"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Harry Potter Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"History Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Huddle Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Interact Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"International Exchange Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Jewish Student Connection"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Juggling/Unicycling Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Key Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Korean Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"L.E.G.O.S. "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Latin Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Linking Hearts"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Marching Band/Color Guard"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Math Club "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Model UN "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Muslim Student Alliance"]];
//    [_clubs addObject: [[club alloc] initWithName:@"My Little Pony Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"National Art Honor Society"]];
//    [_clubs addObject: [[club alloc] initWithName:@"National Honor Society"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Nourish International "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Open Arms "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Peer Ambassadors "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Percussion Ensemble"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Photography Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Physics Club "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Pinterest "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Play Strong"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Poetry Club "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Pokemon Club "]];
//    [_clubs addObject: [[club alloc] initWithName:@"President's Club "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Recycling Club "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Robotics Team Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"S.A.C.A."]];
//    [_clubs addObject: [[club alloc] initWithName:@"Suicide Prevention of Teens"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Science Bowl"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Science Olympiad"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Sign Language Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"SOAR"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Social Seminar"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Space Settlement Design Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Spanish Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Spanish Honor Society "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Spectrum-Gay/Straight Alliance"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Speech and Debate "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Sports Broadcasting Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Step Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Student Senate "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Theater Productions "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Tech Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Union Street Journal "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Video Game Club "]];
//    [_clubs addObject: [[club alloc] initWithName:@"Winter Guard"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Writing Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Yearbook"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Young Democrats"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Young Life Club"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Young Politicians"]];
//    [_clubs addObject: [[club alloc] initWithName:@"Youth Advisory Board "]];
    
    
    
    
    
    
    
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
