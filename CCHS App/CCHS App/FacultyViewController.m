//
//  FacultyViewController.m
//  CCHS App
//
//  Created by Student on 5/6/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "FacultyViewController.h"
#import "TeacherScreenViewController.h"

@interface FacultyViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *tabswitch;
@property NSMutableArray *teachers;
@property NSMutableArray *teacherNames;
@property NSArray *indices;
@end

@implementation FacultyViewController


//- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
//    return [_indices indexOfObject:[[_teachers objectAtIndex:index] objectAtIndex:1]];
//}
- (IBAction)tabSwitchPressed:(UIBarButtonItem *)sender {
    if ([_tabswitch.title isEqualToString:@"By Department"]){
        _tabswitch.title=@"Alphabetical";
    }else{
        _tabswitch.title=@"By Department";
    }
    [self.tableView reloadData];
}

- (IBAction)pressed:(UIBarButtonItem *)sender {

}

- (NSString *)tableView:(UITableView *)aTableView titleForHeaderInSection:(NSInteger)section {
    if ([self whichTab]==0){
        return [_indices objectAtIndex:section];
    }else{
        return nil;
    }
}

-(NSUInteger) whichTab{
    return [_tabswitch.title isEqualToString:@"By Department"];
    //return((UITabBarController *) self.parentViewController.parentViewController).selectedIndex;
}

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
               nil];
    [_teachers removeObjectAtIndex:0];
    _teacherNames=[[NSMutableArray alloc] init];
    for (int i=0; i<[_teachers count]; i++){
        [_teachers replaceObjectAtIndex:i withObject:[[_teachers objectAtIndex:i] componentsSeparatedByString:@","]];
        [_teacherNames addObject:[[_teachers objectAtIndex:i] objectAtIndex:0]];
    }
    _indices=[NSArray arrayWithObjects:@"Language Arts", @"Math", @"Social Studies", @"Science", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    if ([self whichTab]==0){
        return _indices.count;
    }
    else{
        return 1;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    if ([self whichTab]==0){
        int c=0;
        for (int i=0; i<_teachers.count; i++){
            if ([[[_teachers objectAtIndex:i] objectAtIndex:1] isEqualToString:[_indices objectAtIndex:section]]){
                c++;
            }
        }
        return c;
    }
    else{
        return _teachers.count;
    }
}



-(NSArray *) teacherForIndexPath: (NSIndexPath *) indexPath{
    if ([self whichTab]==0){
        int count=-1;
        NSArray *t;
        for (int i=0; i<_teachers.count; i++){
            if ([[[_teachers objectAtIndex:i] objectAtIndex:1] isEqualToString:[_indices objectAtIndex:indexPath.section]]){
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

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TeacherCell" forIndexPath:indexPath];
        cell.textLabel.text=[[self teacherForIndexPath:indexPath] objectAtIndex:0];
        return cell;
    
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


 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     TeacherScreenViewController *target=[segue destinationViewController];
     NSIndexPath *path = [self.tableView indexPathForSelectedRow];
     target.info=[self teacherForIndexPath:path];
     
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 


@end
