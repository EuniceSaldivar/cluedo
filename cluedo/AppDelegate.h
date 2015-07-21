//
//  AppDelegate.h
//  cluedo
//
//  Created by Eunice Saldivar on 7/22/15.
//  Copyright (c) 2015 jumpdigital. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    
    MainViewController * mainViewController;
    
    
}


@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController * navigationController;



@end

