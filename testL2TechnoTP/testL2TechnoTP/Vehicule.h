//
//  Vehicule.h
//  testL2TechnoTP
//
//  Created by Iman Zarrabian on 09/02/15.
//  Copyright (c) 2015 Iman Zarrabian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Vehicule : NSObject {
#warning primitives/objects types
    //COURS: Types Primitives
    NSInteger nbWheels;
    NSInteger nbDoors;
    
    //COURS  Types Objets (instances)
    UIColor *color;
    NSString *brand;
}


//COURS: Methode visible du monde extérieur
- (void)drive;

@end
