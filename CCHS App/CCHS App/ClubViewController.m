//
//  ClubViewController.m
//  CCHS App
//
//  Created by Student on 5/6/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "ClubViewController.h"

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
    [_clubs addObject:@"DECA"];
    [_clubs addObject:@"Diversty Task Force"];
    [_clubs addObject:@"FCLA"];
    [_clubs addObject:@"Club 4"];
    [_clubs addObject:@"Club 5"];
    
    
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


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%ld", (long)indexPath.row);
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    // Configure the cell...
    
    //cell.textLabel.text = [_clubs objectAtIndex:indexPath.row-1];
    
    
    
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
