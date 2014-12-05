//
// Created by Ian Dundas on 05/12/14.
// Copyright (c) 2014 Ian Dundas. All rights reserved.
//

#import <ReactiveCocoa/ReactiveCocoa/RACSignal+Operations.h>
#import "TimeKeeper.h"
#import "RACDisposable.h"
#import "NSObject+RACPropertySubscribing.h"
#import "Clock.h"
#import "Clock.h"

@interface TimeKeeper ()
@property RACDisposable *previousSubscription;
@end

@implementation TimeKeeper

- (instancetype)init {
    if (self = [super init]) {

        [[[RACObserve(self, clock)
            map:^(Clock *clock) {
                // Map the changes to the Clock into the currentTime signal
                return clock.currentTimeSignal;
            }]
            switchToLatest] // Only interested in signals from the latest Clock
            subscribeNext:^(NSDate *time) {
                NSLog (@"The current time: %@", time);
            }];

        return self;
    }
    return self;
}


@end