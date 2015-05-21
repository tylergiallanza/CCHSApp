//
//  TeacherScreenViewController.m
//
//  Created by Avi Swartz on 5/18/15.
//  Copyright (c) 2015 Avi Swartz. All rights reserved.
//

#import "TeacherScreenViewController.h"

@interface TeacherScreenViewController ()
@property (weak, nonatomic) IBOutlet UILabel *department; //these four should be obvious
@property (weak, nonatomic) IBOutlet UILabel *office;
@property (weak, nonatomic) IBOutlet UILabel *phone;
@property (weak, nonatomic) IBOutlet UILabel *email;
@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *periods; //the period display of the schedule
@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *classes; //the class display of the schedule
@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *rooms;   //the room display of the schedule

@end

@implementation TeacherScreenViewController



//initial setup of the code
- (void)viewDidLoad {
    [super viewDidLoad];
    //set up the name, office, phone, email stuff
    self.navigationItem.title = [_info objectAtIndex:0];
    _department.text=[_info objectAtIndex:1];
    _office.text=[_info objectAtIndex:2];
    _phone.text=[_info objectAtIndex:3];
    _email.text=[_info objectAtIndex:4];
    
    
    //set the schedule of the teacher
    for (int i=0; i<8; i++){
        ((UILabel *)[_periods objectAtIndex:i]).text=[NSString stringWithFormat:@"%d",i+1];
        ((UILabel *)[_classes objectAtIndex:i]).text=[_info objectAtIndex:5+2*i];
        ((UILabel *)[_rooms objectAtIndex:i]).text=[_info objectAtIndex:6+2*i];
        ((UILabel *)[_periods objectAtIndex:i]).adjustsFontSizeToFitWidth=YES;
        ((UILabel *)[_periods objectAtIndex:i]).adjustsFontSizeToFitWidth=YES;
        ((UILabel *)[_periods objectAtIndex:i]).adjustsFontSizeToFitWidth=YES;
    }
    
    //makes labels resize to handle long text
    _email.adjustsFontSizeToFitWidth=YES;
    _office.adjustsFontSizeToFitWidth=YES;
    _phone.adjustsFontSizeToFitWidth=YES;
    _email.adjustsFontSizeToFitWidth=YES;
    
}

//I have no clue what this does.
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
