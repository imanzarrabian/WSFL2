//
//  ViewController.m
//  VelibL2
//
//  Created by Iman Zarrabian on 10/02/15.
//  Copyright (c) 2015 Iman Zarrabian. All rights reserved.
//

#import "StationsListViewController.h"
#import "StationDetailViewController.h"
#import "StationTableViewCell.h"
#import "Station.h"
#import "UIImageView+WebCache.h"

@interface StationsListViewController () <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray *stationsArray;
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@end

@implementation StationsListViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.stationsArray = [[NSMutableArray alloc] init];

    [self fillArrayWithData];
}

- (void)fillArrayWithData {
    for (NSInteger i=0; i<1001; i++) {

        
        
        
        Station *station = [[Station alloc] init];
        station.stationName = [NSString stringWithFormat:@"Station %ld",i];
        station.stationAdresse = [NSString stringWithFormat:@"Station Adresse Un peu plus longue que le nom %ld",i];

        station.stationAvailableBikesNumber = i;
        station.stationAvailableStandsNumber = i*3+2;
        
        station.lat = 48.8254416 + i*0.001;
        station.lng = 2.3665593 + i*0.001;
        
        station.coordinate = CLLocationCoordinate2DMake(station.lat, station.lng);
        station.title = station.stationName;
        station.subtitle = station.stationAdresse;
        
        self.stationsArray[i] = station;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //Retourne le nombre de cellule
    return self.stationsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   //Retourne une cellule avec les bonnes infos dedans
    StationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    Station *currentStation = self.stationsArray[indexPath.row];
    
    cell.stationNameLabel.text = currentStation.stationName;
    
    cell.stationNbBikesAvailableLabel.text = [NSString stringWithFormat:@"%ld vélos dispos",currentStation.stationAvailableBikesNumber];
    
    cell.stationNbStandsAvailableLabel.text = [NSString stringWithFormat:@"%ld emplacements dispos",currentStation.stationAvailableStandsNumber];
    
    NSURL *url = [NSURL URLWithString:@"http://www.yankodesign.com/images/design_news/2013/10/17/flexi_bike.jpg"];
   
    [cell.avatarIV sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"bike"]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //Est appelée a chaque fois q'un SEGUE est declenché depuis ce VC
    
    //Tester le segue pour etre sur que c'est bien celui qu'on veut
    //a savoir liste vers detail
    if ([segue.identifier isEqualToString:@"detailSegue"]) {
        
        //Cast vers UITableViewCell et StationDetailViewController
        UITableViewCell *currentCell = (UITableViewCell *)sender;
        StationDetailViewController *detailVC = (StationDetailViewController *)segue.destinationViewController;

        NSIndexPath *indexPath = [self.tableView indexPathForCell:currentCell];
        
        detailVC.station = self.stationsArray[indexPath.row];
       
    }
}


@end
