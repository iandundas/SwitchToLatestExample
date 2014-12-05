//
// Created by Ian Dundas on 05/12/14.
// Copyright (c) 2014 Ian Dundas. All rights reserved.
//


@import UIKit;

#import "Clock.h"

@interface FastClock : Clock
@property RACSignal *currentTimeSignal;
@end