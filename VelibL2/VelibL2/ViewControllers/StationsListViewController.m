//
//  ViewController.m
//  VelibL2
//
//  Created by Iman Zarrabian on 10/02/15.
//  Copyright (c) 2015 Iman Zarrabian. All rights reserved.
//

#import "StationsListViewController.h"
#import "StationDetailViewController.h"

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
        self.stationsArray[i] = [NSString stringWithFormat:@"Station %ld",i];
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.stationsArray[indexPath.row];
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
        
        //Cast vers UITableViewCell
        UITableViewCell *currentCell = (UITableViewCell *)sender;
        StationDetailViewController *detailVC = (StationDetailViewController *)segue.destinationViewController;

        NSIndexPath *indexPath = [self.tableView indexPathForCell:currentCell];
        detailVC.stationName = self.stationsArray[indexPath.row];
    }
}


@end
