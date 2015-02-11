//
//  StationDetailViewController.m
//  VelibL2
//
//  Created by Iman Zarrabian on 10/02/15.
//  Copyright (c) 2015 Iman Zarrabian. All rights reserved.
//

#import "StationDetailViewController.h"
#import <MapKit/MapKit.h>

@interface StationDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *adresseLabel;
@property (weak, nonatomic) IBOutlet UILabel *nbBikesLabel;
@property (weak, nonatomic) IBOutlet UILabel *nbStandsLabel;
@property (nonatomic, weak) IBOutlet MKMapView *mapView;
@end

@implementation StationDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.station.stationName;
    self.adresseLabel.text = self.station.stationAdresse;
    
    self.nbBikesLabel.text = [NSString stringWithFormat:@"%ld vélos dispos",self.station.stationAvailableBikesNumber];

    self.nbStandsLabel.text = [NSString stringWithFormat:@"%ld vélos dispos",self.station.stationAvailableStandsNumber];
    
    [self addAnnotationOnMap];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self setCorrectRegionOnMap];
}

- (void)addAnnotationOnMap {
    [self setCorrectRegionOnMap];
    //Ajouter une epingle
    [self.mapView addAnnotation:self.station];
}

- (void)setCorrectRegionOnMap {
    CLLocationCoordinate2D center = CLLocationCoordinate2DMake(self.station.lat, self.station.lng);
    MKCoordinateSpan span = MKCoordinateSpanMake(0.001, 0.001);
    
    MKCoordinateRegion newRegion = MKCoordinateRegionMake(center, span);
    
    //Region
    [self.mapView setRegion:newRegion animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)resetRegion:(id)sender {
    [self setCorrectRegionOnMap];
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
