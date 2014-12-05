//
// Created by Ian Dundas on 05/12/14.
// Copyright (c) 2014 Ian Dundas. All rights reserved.
//


@import UIKit;
@class RACSignal;

@interface Clock : NSObject
@property RACSignal *currentTimeSignal;
@end