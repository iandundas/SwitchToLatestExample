//
//  AppDelegate.m
//  SwitchToLatestClock
//
//  Created by Ian Dundas on 05/12/14.
//  Copyright (c) 2014 Ian Dundas. All rights reserved.
//


#import "AppDelegate.h"
#import "TimeKeeper.h"
#import "Clock.h"
#import "FastClock.h"

@interface AppDelegate ()
@property (nonatomic, strong) TimeKeeper *timeKeeper;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.timeKeeper= [[TimeKeeper alloc]init];
    [self.timeKeeper setClock:[Clock new]];

    [self performSelector:@selector (switchClock) withObject:nil afterDelay:5];
    return YES;
}

-(void)switchClock{
    NSLog (@"Switching To Fast Clock");
    [self.timeKeeper setClock:[FastClock new]];

}


@end