//
//  FacultyViewController.m
//  CCHS App
//
//  Created by Avi Swartz on 5/6/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "FacultyViewController.h"
#import "TeacherScreenViewController.h"

@interface FacultyViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *tabswitch; //switches the view from by department to alphabetical
@property NSMutableArray *teachers; //array of the teachers
@property NSArray *sectionLabels; //labels of the section
@end

@implementation FacultyViewController



//changes the view from by department to alphabetical, and back
- (IBAction)tabSwitchPressed:(UIBarButtonItem *)sender {
    if ([_tabswitch.title isEqualToString:@"By Department"]){
        _tabswitch.title=@"Alphabetical";
    }else{
        _tabswitch.title=@"By Department";
    }
    [self.tableView reloadData];
}


//goes back when the back button is pressed
- (IBAction)pressed:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


//puts section titles in the table, or returns nil if there are no sections (alphabetical sorting)
- (NSString *)tableView:(UITableView *)aTableView titleForHeaderInSection:(NSInteger)section {
    if ([self whichTab]==0){
        return [_sectionLabels objectAtIndex:section];
    }else{
        return nil;
    }
}

//indicates whether the view is by department or alphabetical. 0 for department, 1 for alphabetical
-(NSUInteger) whichTab{
    return [_tabswitch.title isEqualToString:@"By Department"]; //the button says what view the button switches to, not the one it is in
}


//creates the view
- (void)viewDidLoad {
    [super viewDidLoad];
    _teachers=[NSMutableArray arrayWithObjects:
               @"Name,Subject,Office,Phone Number,Email,1 Class,1 Room,2 Class,2 Room,3 Class,3 Room,4 Class,4 Room,5 Class,5 Room,6 Class,6 Room,7 Class,7 Room,8 Class,8 Room",
               @"Aristotle,Social Studies,Athens,555-635-9875,aristotle@cherrycreekschools.org,,,Logic,W 350,,,Philosophy,W 350,,,Rhetoric,W 350,,,Philosophy,W 350",
               @"Noam Chomsky,Social Studies,Cambridge,555-132-4578,nchomsky@cherrycreekschools.org,,,Linguistics,W 322,,,,,,,Logics,W 322,,,Linguistics,W 322",
               @"Marcus Tullius Cicero,Language Arts,Rome,555-789-6314,mcicero@cherrycreekschools.org,Intro to Oratory,W 111,,,Advanced Oratory,W 111,,,Intro to Oratory,W 111,Law,W 111,,,,,",
               @"Albert Einstein,Science,Princeton,555-543-8765,aeinstein@cherrycreekschools.org,,,General Relativity,W 987,,,Special Relativity,W 987,,,,,Special Relativity,W 987,,",
               @"Paul Erdos,Math,Everywhere,555-456-7894,perdos@cherrycreekschools.org,Combinatorics,W 425,,,Number Theory,W 425,,,Analysis,W 425,,,Set Theory,W 425,,",
               @"Linus Pauling,Science,Stanford,555-789-9435,lpauling@cherrycreekschools.org,Molecular Biology,W 456,,,Quantum Chemistry,W 456,,,Chemistry,W 456,,,,,Chemistry,W 456",
               nil]; //the teachers are hard coded, because I ran out of time to load them from a file
    [_teachers removeObjectAtIndex:0];
    //load the teacher arrays
    for (int i=0; i<[_teachers count]; i++){
        [_teachers replaceObjectAtIndex:i withObject:[[_teachers objectAtIndex:i] componentsSeparatedByString:@","]];
    }
    _sectionLabels=[NSArray arrayWithObjects:@"Language Arts", @"Math", @"Social Studies", @"Science", nil];
    
}

//I dont know what this does
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

//returns the appropiate number of sections based on the view setting
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    if ([self whichTab]==0){
        return _sectionLabels.count;
    }
    else{
        return 1;
    }
}

//number of rows per section, as appropiate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    if ([self whichTab]==0){
        int c=0;
        for (int i=0; i<_teachers.count; i++){
            if ([[[_teachers objectAtIndex:i] objectAtIndex:1] isEqualToString:[_sectionLabels objectAtIndex:section]]){
                c++;
            }
        }
        return c;
    }
    else{
        return _teachers.count;
    }
}


//returns the teacher that was clicked
-(NSArray *) teacherForIndexPath: (NSIndexPath *) indexPath{
    if ([self whichTab]==0){
        //this is necessary in order to match the row in section to the list of teachers
        int count=-1;
        NSArray *t;
        for (int i=0; i<_teachers.count; i++){
            //finds the teacher at row in section
            if ([[[_teachers objectAtIndex:i] objectAtIndex:1] isEqualToString:[_sectionLabels objectAtIndex:indexPath.section]]){
                count++;
                if (indexPath.row==count){
                    t=[_teachers objectAtIndex:i];
                }
            }
        }
        return t;
    }
    else{
        return [_teachers objectAtIndex:indexPath.row];
    }
}

//creates the cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TeacherCell" forIndexPath:indexPath];
        cell.textLabel.text=[[self teacherForIndexPath:indexPath] objectAtIndex:0];
        return cell;
    
}
#pragma mark - Navigation

//prepares for segue
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    TeacherScreenViewController *target=[segue destinationViewController];
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    target.info=[self teacherForIndexPath:path];
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */



 


@end
