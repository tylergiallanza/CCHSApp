//
//  BellViewController.m
//  CCHS App
//
//  Created by Student on 5/6/15.
//  Copyright (c) 2015 Students. All rights reserved.
//

#import "BellViewController.h"

@interface BellViewController ()

@end

@implementation BellViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"bell");
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    UINavigationBar *bar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0,0,100, 100)];
    //UIBarButtonItem *title = [[UIBarButtonItem alloc] initWithTitle:@"Bell Schedule" style:UIBarButtonItemStylePlain target:self action:@selector(done:)];
//    UINavigationItem *title = [[UINavigationItem alloc] initWithTitle:@"Bell Schedule"];
//    [bar setItems:[NSArray arrayWithObject:title] animated:YES];
    [self.view addSubview:bar];
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
