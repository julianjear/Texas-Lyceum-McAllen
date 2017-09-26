//
//  FourthViewController.h
//  Texas Lyceum
//
//  Created by Julian Emilio Alvarez Restrepo on 4/18/14.
//  Copyright (c) 2014 Julian Emilio Alvarez Restrepo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface FourthViewController : UIViewController <MKMapViewDelegate> {
    MKMapView *mapView;
   // CLLocationManager *locationManager;

}
@property (nonatomic, retain) IBOutlet MKMapView *mapView;

-(IBAction)setMap:(id)sender;
-(IBAction)getLocation:(id)sender;

@end
