//
//  Station.h
//  VelibL2
//
//  Created by Iman Zarrabian on 11/02/15.
//  Copyright (c) 2015 Iman Zarrabian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Station : NSObject <MKAnnotation>

@property (nonatomic, strong) NSString *stationName;
@property (nonatomic, strong) NSString *stationAdresse;
@property (nonatomic, assign) NSInteger stationAvailableBikesNumber;
@property (nonatomic, assign) NSInteger stationAvailableStandsNumber;
@property (nonatomic, assign) double lat;
@property (nonatomic, assign) double lng;

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic,copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;


@end
