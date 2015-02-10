//
//  ViewController.m
//  XcodeDiscovery
//
//  Created by Iman Zarrabian on 09/02/15.
//  Copyright (c) 2015 Iman Zarrabian. All rights reserved.
//

#import "ViewController.h"
#import "Voiture.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *speedLabel;
@property (nonatomic, strong) Voiture *voiture1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.voiture1 = [[Voiture alloc] init];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createAndDriveACar:(id)sender {

#warning
    //COURS : On accede au Setter de la property speed
    [self displaySpeedFromCar];
}

- (IBAction)incrementCarSpeed:(id)sender {
    self.voiture1.speed = self.voiture1.speed + 10.0;
    [self displaySpeedFromCar];
}

- (void)displaySpeedFromCar {
    self.speedLabel.text = [self.voiture1 drive];
}

@end
