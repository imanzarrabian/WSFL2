//
//  AppDelegate.m
//  testL2TechnoTP
//
//  Created by Iman Zarrabian on 09/02/15.
//  Copyright (c) 2015 Iman Zarrabian. All rights reserved.
//

#import "AppDelegate.h"
#import "Voiture.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
#warning explications classe/instances
    //COURS: vehicule1 est une variable de type Vehicule *
    //Cela veut dire que voiture1 est une instance (objet) de la classe Voiture
    //la partie droite du signe "=" sert à
    //Créer une instance de la classe Voiture et à l'initialiser
    //Et enfin à la mettre dans la variable voiture1
    Voiture *voiture1 = [[Voiture alloc] init];
    
    //COURS: Deux appels equivalents
    //[vehicule1 setSpeed:30.0];
    voiture1.speed = 30.0;
    [voiture1 drive];
    
    Voiture *voiture2 = [[Voiture alloc] init];
    voiture2.speed = voiture1.speed;
    voiture2.isManualGearSystem = YES;

    [voiture2 drive];


    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
