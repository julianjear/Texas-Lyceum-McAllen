//
//  FirstViewController.h
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 4/18/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
@interface FirstViewController : UIViewController <MFMailComposeViewControllerDelegate> {
    IBOutlet UIWebView *thingsToDoWebView;
    IBOutlet UIActivityIndicatorView *thingsToDoActivityIndicator;
    IBOutlet UINavigationBar *navigationThingsToDo;
    
    IBOutlet UIWebView *babysitterWebView;
    IBOutlet UIActivityIndicatorView *babysitterActivityIndicator;
    IBOutlet UINavigationBar *navigationBabysitter;
}

@property(nonatomic, retain) IBOutlet UIWebView *thingsToDoWebView;
@property(nonatomic, retain) IBOutlet UIActivityIndicatorView *thingsToDoActivityIndicator;
@property(nonatomic, retain) IBOutlet UINavigationBar *navigationThingsToDo;

@property(nonatomic, retain) IBOutlet UIWebView *babysitterWebView;
@property(nonatomic, retain) IBOutlet UIActivityIndicatorView *babysitterActivityIndicator;
@property(nonatomic, retain) IBOutlet UINavigationBar *navigationBabysitter;

-(IBAction)McAllenLink:(id)sender;
-(IBAction)EdinburgLink:(id)sender;
-(IBAction)SouthPaderIslandLink:(id)sender;
-(IBAction)PharrLink:(id)sender;
-(IBAction)MissionLink:(id)sender;

-(IBAction)careLink:(id)sender;
-(IBAction)sitterCityLink:(id)sender;

-(IBAction)jearLink:(id)sender;
-(IBAction)texasLyceumLink:(id)sender;

-(IBAction)facebookLink:(id)sender;
-(IBAction)twitterLink:(id)sender;

-(IBAction)emailButton:(id)sender;

@end
