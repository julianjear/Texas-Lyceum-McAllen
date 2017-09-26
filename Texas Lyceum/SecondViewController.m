//
//  SecondViewController.m
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 4/18/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import "SecondViewController.h"
#import "SessionViewController.h"
#import "FourthViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [scheduleScroller setScrollEnabled:YES];
    [scheduleScroller setContentSize:CGSizeMake(320, 532)];
}

-(void)goToNext:(id)sender {
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
