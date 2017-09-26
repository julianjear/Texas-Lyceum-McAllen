//
//  FirstViewController.m
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 4/18/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize thingsToDoWebView;
@synthesize thingsToDoActivityIndicator;
@synthesize navigationThingsToDo;

@synthesize babysitterWebView;
@synthesize babysitterActivityIndicator;
@synthesize navigationBabysitter;

int McAllenInt = 0;
int PharrInt = 0;
int EdinburgInt = 0;
int SouthPadreInt = 0;
int MissionInt = 0;

int CareInt = 0;
int SitterCityInt = 0;

int jearInt = 0;
int texasLyceumInt = 0;

int facebookInt = 0;
int twitterInt = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if (McAllenInt == 1) {
          [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://mcallencvb.com"]]];
        McAllenInt=0;
        self.navigationThingsToDo.topItem.title =@"McAllen";
    }
    if (PharrInt == 1) {
        [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://pharr-tx.gov/business/pharr-edc/"]]];
        PharrInt=0;
        self.navigationThingsToDo.topItem.title =@"Pharr";

    }
    if (EdinburgInt == 1) {
          [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://edinburg.com"]]];
        EdinburgInt=0;
        self.navigationThingsToDo.topItem.title =@"Edinburg";

    }
    if (SouthPadreInt == 1) {
          [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.sopadre.com"]]];
        SouthPadreInt=0;
        self.navigationThingsToDo.topItem.title =@"South Padre";

    }
    if (MissionInt == 1) {
        [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.missionchamber.com"]]];
        MissionInt=0;
        self.navigationThingsToDo.topItem.title =@"Mission";
}
    
    if (CareInt == 1) {
        [babysitterWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.care.com/babysitters/mcallen-tx"]]];
        CareInt=0;
        self.navigationBabysitter.topItem.title =@"Care";
    }
    if (SitterCityInt == 1) {
        [babysitterWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.sittercity.com/babysitters/tx/mcallen.html"]]];
        SitterCityInt=0;
        self.navigationBabysitter.topItem.title =@"Sittercity";
    }
    if (jearInt == 1) {
        [babysitterWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.jeardev.com"]]];
        jearInt=0;
        self.navigationBabysitter.topItem.title =@"JEAR";
    }
    if (texasLyceumInt == 1) {
        [babysitterWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.texaslyceum.org/"]]];
        texasLyceumInt=0;
        self.navigationBabysitter.topItem.title =@"Texas Lyceum";
    }
    if (facebookInt == 1) {
        [babysitterWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.facebook.com/texaslyceum"]]];
        facebookInt=0;
        self.navigationBabysitter.topItem.title =@"Facebook";
    }
    if (twitterInt == 1) {
        [babysitterWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://twitter.com/TexasLyceum"]]];
        twitterInt=0;
        self.navigationBabysitter.topItem.title =@"Twitter";
    }
    
    
#define K_LAUNCHED_BEFORE @"launchedBefore"
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    BOOL launchedBefore = [defaults boolForKey: K_LAUNCHED_BEFORE];
    if (!launchedBefore)
    {
        //Do first-time initialization
        launchedBefore = TRUE;
        [defaults setBool: launchedBefore forKey: K_LAUNCHED_BEFORE];
        [defaults synchronize];
        NSLog(@"first laaungh");
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"Attendees"
                                                       message: @"Must register to attend"
                                                      delegate: self
                                             cancelButtonTitle:@"Dismiss"
                                             otherButtonTitles:nil];
        
        
        [alert show];
        
        
        //[guide1 show];
        
    } else {
        NSLog(@"second");
        
        
    }

}

-(IBAction)McAllenLink:(id)sender {
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://mcallencvb.com"]];
  //  [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://mcallencvb.com"]]];
    McAllenInt = 1;
}
-(IBAction)EdinburgLink:(id)sender {
   // [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://edinburg.com"]];
  //  [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://edinburg.com"]]];
    EdinburgInt = 1;
}
-(IBAction)SouthPaderIslandLink:(id)sender {
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.sopadre.com"]];
  //  [thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.sopadre.com"]]];
    SouthPadreInt =1;
}

-(void)webViewDidStartLoad:(UIWebView *) webView {
    [thingsToDoActivityIndicator startAnimating];
    [babysitterActivityIndicator startAnimating];

}
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [thingsToDoActivityIndicator stopAnimating];
    [babysitterActivityIndicator stopAnimating];


}

-(IBAction)jearLink:(id)sender {
    jearInt = 1;
}
-(IBAction)texasLyceumLink:(id)sender {
    texasLyceumInt = 1;
}
-(IBAction)careLink:(id)sender {
    CareInt = 1;
}
-(IBAction)sitterCityLink:(id)sender {
    SitterCityInt =1;
}
-(IBAction)PharrLink:(id)sender {
    //[thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://pharr-tx.gov/business/pharr-edc/"]]];
    PharrInt =1;

}

-(IBAction)facebookLink:(id)sender {
    facebookInt = 1;
}
-(IBAction)twitterLink:(id)sender {
    twitterInt = 1;
}

-(IBAction)MissionLink:(id)sender {
    //[thingsToDoWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.missionchamber.com"]]];
    MissionInt =1;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)emailButton:(id)sender {
    NSString *emailTitle = @"Texas Lyceum Meeting";
    // Email Content
    NSString *messageBody = @"";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"jdarling@mcallen.net"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
}


@end
