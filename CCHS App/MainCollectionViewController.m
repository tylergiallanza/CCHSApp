//
//  MainCollectionViewController.m
//  TestCal
//
//  Created by Student on 5/7/15.
//  Copyright (c) 2015 Student. All rights reserved.
//

#import "MainCollectionViewController.h"
#import "CalendarButton.h"

@interface MainCollectionViewController ()

@end

@implementation MainCollectionViewController

static NSString * const reuseIdentifier = @"Cell";
NSMutableArray *data;
NSMutableArray *dates;
NSMutableArray *colorMask;
NSMutableArray *buttons;
int clickedButton;
- (IBAction)backClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //init all data types
    data = [[NSMutableArray alloc] init];
    dates = [[NSMutableArray alloc] initWithCapacity:42];
    colorMask = [[NSMutableArray alloc] initWithCapacity:42];
    buttons = [[NSMutableArray alloc] init];
    NSNumber *temp = [NSNumber numberWithInt:0];
    clickedButton = -1;
    for(int i=0;i<42;i++) {
        [dates addObject:temp];
        [colorMask addObject:temp];
    }
    
    int index = 0;
    
    //get current date
    
    NSDate *now = [NSDate date];
    NSCalendar *calendar = [[NSCalendar alloc]
                            initWithCalendarIdentifier:NSGregorianCalendar];
    NSCalendarUnit units = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekOfMonth | NSCalendarUnitWeekday;
    NSDateComponents *components = [calendar components:units fromDate:now];

    index = [components weekOfMonth]*7+[components weekday];
    [dates replaceObjectAtIndex:index withObject:[NSNumber numberWithInteger:[components day]]];
    [colorMask replaceObjectAtIndex:index withObject:[NSNumber numberWithInt:2]];
    
    //count down from current day to start of cal
    int countDown = index;
    NSDateComponents *c = [[NSDateComponents alloc] init];
    [c setDay:-1];
    NSDate *current = now;
    while(countDown > 0) {
        countDown--;
        
        NSDate *dayEarlier = [calendar dateByAddingComponents:c
                                                     toDate:current
                                                    options:0];
        current = dayEarlier;
        NSDateComponents *new = [calendar components:units fromDate:dayEarlier];

        //save day info in array
        if((int)[new month] != (int)[components month]) {
            [colorMask replaceObjectAtIndex:countDown withObject:[NSNumber numberWithInt:1]];
        }
        
        [dates replaceObjectAtIndex:countDown withObject:[NSNumber numberWithInteger:[new day]]];

    }
    
    
    //count up from today to end of cal
    int countUp = index;
    c = [[NSDateComponents alloc] init];
    [c setDay:1];
    current = now;
    while(countUp < 41) {
        countUp++;
        
    NSDate *dayLater = [calendar dateByAddingComponents:c
                                                        toDate:current
                                                       options:0];
    current = dayLater;
    NSDateComponents *new = [calendar components:units fromDate:dayLater];
        
    if((int)[new month] != (int)[components month]) {
        //if we go into the next month make it dark grey
            [colorMask replaceObjectAtIndex:countUp withObject:[NSNumber numberWithInt:1]];
    }
        
    [dates replaceObjectAtIndex:countUp withObject:[NSNumber numberWithInteger:[new day]]];

    }
    
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete method implementation -- Return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete method implementation -- Return the number of items in the section
    return 42;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    //add header to center calendar
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height/4);
}

-(CGSize)collectionView:(UICollectionView*)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    //set the size of each cell relative to screen size so it looks good on all devices
    return CGSizeMake([UIScreen mainScreen].bounds.size.width/7, [UIScreen mainScreen].bounds.size.height/12);
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    //set color to color in array
    cell.layer.borderColor = [UIColor blueColor].CGColor;
    cell.layer.borderWidth = 0.5f;
    
    CalendarButton *b=[[CalendarButton alloc] initWithFrame:CGRectMake(0, 0, cell.frame.size.width, cell.frame.size.height)];
    
    
    NSMutableArray *temp = [[NSMutableArray alloc] init];
    BOOL busy = false;
    //load fake data for testing purposes
    if(indexPath.row == 31 || indexPath.row == 14 || indexPath.row == 22) {
        //fake data
        [temp addObject:[[NSString alloc] initWithString:@"12:30-3:30     Fundraiser"]];
        [temp addObject:[[NSString alloc] initWithString:@"3:30     Club Fair"]];

        b.busy = 1;
    } else {
       // [b setBusy:false];
        b.busy = false;
    }
    
    //[b initWithFrame:CGRectMake(0, 0, cell.frame.size.width, cell.frame.size.height)];
    
    
    [data addObject:temp];
    

    
    //color mask 0 = this month, 1 = other month, 2 = today
    if([[colorMask objectAtIndex:indexPath.row] intValue] == 0)
        b.backgroundColor = [UIColor whiteColor];
    else if([[colorMask objectAtIndex:indexPath.row] intValue] == 2)
        //173-216-255
        b.backgroundColor = [UIColor colorWithRed:0.678f green:0.847f blue:1.0f alpha:1.0f];
    else
        b.backgroundColor = [UIColor colorWithRed:0.827f green:0.827f blue:0.827f alpha:1.0f];
    [b setup:busy];
    //set date to val stored in array
    [b setDate:[[dates objectAtIndex:indexPath.row] stringValue]];
    [b addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [cell addSubview:b];
    [buttons addObject:b];

    
    
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

-(void)buttonClick:(id)sender {
    //find what button was clicked and call the segue
    for(int i=0;i<buttons.count;i++)
        if([[buttons objectAtIndex:i] isEqual:sender])
            clickedButton = i;
    [self performSegueWithIdentifier:@"calSegue" sender:self];
}
+(NSMutableArray*)getData {
    //return data for viewing per day
    //NSLog(@"button %d is selected",clickedButton);
    return [data objectAtIndex:clickedButton];
}
/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
