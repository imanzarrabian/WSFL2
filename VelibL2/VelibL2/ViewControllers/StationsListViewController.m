//
//  ViewController.m
//  VelibL2
//
//  Created by Iman Zarrabian on 10/02/15.
//  Copyright (c) 2015 Iman Zarrabian. All rights reserved.
//

#import "StationsListViewController.h"

@interface StationsListViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation StationsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //Retourne le nombre de cellule
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   //Retourne une cellule avec les bonnes infos dedans
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"Station %ld",indexPath.row];
    return cell;
}



@end
