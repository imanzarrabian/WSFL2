//
//  ModaleViewController.m
//  VelibL2
//
//  Created by Iman Zarrabian on 10/02/15.
//  Copyright (c) 2015 Iman Zarrabian. All rights reserved.
//

#import "ModaleViewController.h"

@interface ModaleViewController ()

@end

@implementation ModaleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goBackToHome:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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
