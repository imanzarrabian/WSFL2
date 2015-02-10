//
//  Voiture.m
//  testL2TechnoTP
//
//  Created by Iman Zarrabian on 09/02/15.
//  Copyright (c) 2015 Iman Zarrabian. All rights reserved.
//

#import "Voiture.h"

@implementation Voiture

- (void)drive {
#warning operation ternaire
    NSString *gearSystem = self.isManualGearSystem == YES ? @"Manuel" : @"Automatique";
    
    //EQUIVALENT
    
    /*NSString *gearSystem;
    if (self.isManualGearSystem == YES) {
        gearSystem = @"Manual";
    }
    else {
        gearSystem = @"Automatic";
    }*/
    
    NSLog(@"Je roule à une vitesse de %.1f km/h en mode %@",speed,gearSystem);
}

- (void)setSpeed:(CGFloat)newSpeed {
    speed = newSpeed;
}

- (CGFloat)speed {
    return speed;
}

@end
