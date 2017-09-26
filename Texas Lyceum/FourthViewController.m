//
//  FourthViewController.m
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 4/18/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import "FourthViewController.h"
#import "MapPin.h"
@interface FourthViewController ()

@end
int UserLocationRangeOnce =0;
@implementation FourthViewController
@synthesize mapView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    mapView.mapType = MKMapTypeStandard;
    self.mapView.delegate = self;
  //  [self.mapView setShowsUserLocation:YES];
   // [CLLocationManager requestWhenInUseAuthorization];
    UserLocationRangeOnce =1;
    mapView.showsUserLocation = TRUE;

    MKCoordinateRegion region = { {0.0, 0.0}, {0.0, 0.0}};
    region.center.latitude = 26.19780;
    region.center.longitude = -98.26000;
  //  region.span.latitudeDelta = 0.005f;
  //  region.span.longitudeDelta = 0.005f;
    [mapView setRegion:region animated:YES];

    MapPin *ann = [[MapPin alloc] init];
    ann.title = @"McAllen Convention Center";
    ann.subtitle = @"McAllen";
    ann.coordinate = region.center;
    [mapView addAnnotation:ann];
    
    MKCoordinateRegion region2 = { {0.0, 0.0}, {0.0, 0.0}};
    region2.center.latitude = 26.185129;
    region2.center.longitude = -98.224915;
    //  region.span.latitudeDelta = 0.005f;
    //  region.span.longitudeDelta = 0.005f;
    [mapView setRegion:region2 animated:YES];
    
    MapPin *ann2 = [[MapPin alloc] init];
    ann2.title = @"Embassy Suites Hotel";
    ann2.subtitle = @"McAllen";
    ann2.coordinate = region2.center;
    [mapView addAnnotation:ann2];
    
   /* MKCoordinateRegion region;
    region.center = mapView.userLocation.location.coordinate;
    NSLog(@"%f", self.mapView.userLocation.location.coordinate.latitude);
    //MKCoordinateSpan span;
    region.span.latitudeDelta  = 0.01f; // Change these values to change the zoom
    region.span.longitudeDelta = 0.01f;
    //region.span = span;
    
    [self.mapView setRegion:region animated:YES];*/
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    if (UserLocationRangeOnce == 1) {
    CLLocationCoordinate2D myLocation = [userLocation coordinate];
    MKCoordinateRegion zoomRegion = MKCoordinateRegionMakeWithDistance(myLocation, 11000, 11000);
    [self.mapView setRegion:zoomRegion animated:YES];
        UserLocationRangeOnce=0;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)setMap:(id)sender {
}
-(IBAction)getLocation:(id)sender {

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
