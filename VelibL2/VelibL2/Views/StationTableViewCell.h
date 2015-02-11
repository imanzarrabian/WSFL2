//
//  StationCellTableViewCell.h
//  VelibL2
//
//  Created by Iman Zarrabian on 11/02/15.
//  Copyright (c) 2015 Iman Zarrabian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StationTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *stationNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *stationNbBikesAvailableLabel;
@property (nonatomic, weak) IBOutlet UILabel *stationNbStandsAvailableLabel;
@property (nonatomic, weak) IBOutlet UIImageView *avatarIV;
@end
