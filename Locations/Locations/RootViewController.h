//
//  RootViewController.h
//  Locations
//
//  Created by TakanoriMatsumoto on 2014/08/08.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface RootViewController : UITableViewController <CLLocationManagerDelegate> {
    NSMutableArray *eventsArray;
    NSManagedObjectContext *managedObjectContext;
    
    CLLocationManager *locationManager;
    UIBarButtonItem *addButton;
}

@property (nonatomic, retain) NSMutableArray *eventsArray;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

@property (nonatomic, retain) CLLocationManager *locationManager;
@property (nonatomic, retain) UIBarButtonItem *addButton;

- (void)addEvent;

@end
