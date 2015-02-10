//
//  Voiture.m
//  XcodeDiscovery
//
//  Created by Iman Zarrabian on 09/02/15.
//  Copyright (c) 2015 Iman Zarrabian. All rights reserved.
//


#import "Voiture.h"

@implementation Voiture

- (NSString *)drive {
#warning 
    //COURS : Construit une chaine de caractères avec une variable qui est self.speed
    //Cette chaine est retournée par la méthode "drive"
    return [NSString stringWithFormat:@"JE ROULE A LA VITESSE %f",self.speed];
    ;
}

@end
