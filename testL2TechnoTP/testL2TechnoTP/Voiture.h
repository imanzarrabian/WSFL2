//
//  Voiture.h
//  testL2TechnoTP
//
//  Created by Iman Zarrabian on 09/02/15.
//  Copyright (c) 2015 Iman Zarrabian. All rights reserved.
//

#import "Vehicule.h"

@interface Voiture : Vehicule {
    CGFloat speed;
}

@property (nonatomic, assign) BOOL isManualGearSystem;

#warning Setter
//COURS : Nous permet d'utiliser la notation .
- (void)setSpeed:(CGFloat)newSpeed;
- (CGFloat)speed;

@end
