//
//  MainScreenCollectionViewController.m
//  CCHS App
//
//  Created by Student on 5/5/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "MainScreenCollectionViewController.h"
#import "CalendarViewController.h"

@interface MainScreenCollectionViewController ()

@property NSArray *images;//array of all of the images for the icons on the main sreen
@property NSMutableArray *buttons;//an array list of all th buttons
//@property CalendarViewController *calendar;
@end

@implementation MainScreenCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *backgroundImage = [UIImage imageNamed:@"CherryCreek.jpeg"];//making a background
    UIImageView *backgroundImageView=[[UIImageView alloc]initWithFrame:self.view.frame];//making the background image scale to the size of the screen
    backgroundImageView.image=backgroundImage;//adding a background
    [self.view insertSubview:backgroundImageView atIndex:0];
    //[self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"CherryCreek.jpeg"]]];
    _images=[[NSArray alloc] initWithObjects:@"bell", @"calendar",@"contacts", @"club", @"powerschool", @"outlook", @"search",@"news",@"globe",@"phone",@"map", nil];//adding all the 
    _buttons= [[NSMutableArray alloc] init];
    //    _calendar=[[CalendarViewController alloc] init];
    
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
    return 12;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    if(indexPath.row < _images.count) {
        UIButton *b=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 75, 75)];
        [b setBackgroundImage:[UIImage imageNamed:[_images objectAtIndex:indexPath.row]] forState:UIControlStateNormal];
        [b addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [cell addSubview:b];
        [_buttons addObject:b];
        
    }
    
    // Configure the cell
    
    return cell;
}

//when one of the buttons is clicked this method identifies it and calls coresponding the segue
-(void)buttonClick:(id)selector {
    for(int i=0;i<_buttons.count;i++) {//go through the buttons...
        if([[_buttons objectAtIndex:i] isEqual:selector]){//when you find the one that is clicked one(thus the selector of this method)
            @try {//in a try catch to satify the compiler and make it so the image with out a sceen (the ones we didnt choose to implement) dont cause problems when they are clicked
                [self performSegueWithIdentifier: [_images objectAtIndex: i] sender:self];//perform the segue to the view controller the icon represents(the segue has the same
                                                                                        //name as the image)

            }
            @catch (NSException *exception) {
                //I don't need anything here. This block is so the program will execute segues it has and not do anything if it doesn't have the segue. This was the easiest way to code it. 
            }
            @finally {
            }
            
            //                [self.navigationController pushViewController:_calendar animated:YES];
            
        }
    }
}


#pragma mark <UICollectionViewDelegate>

/*-(void) collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath{
 }*/

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
