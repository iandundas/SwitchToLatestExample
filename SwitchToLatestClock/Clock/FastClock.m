//
// Created by Ian Dundas on 05/12/14.
// Copyright (c) 2014 Ian Dundas. All rights reserved.
//

#import "FastClock.h"
#import "RACScheduler.h"
#import "RACSignal+Operations.h"

@implementation FastClock

@synthesize currentTimeSignal = _currentTimeSignal;

-(instancetype)init{
    if (self = [super init]) {
        _currentTimeSignal= [[RACSignal interval:.1 onScheduler:[RACScheduler mainThreadScheduler]] map:^id (NSDate *time) {
            return [NSString stringWithFormat:@"FAST: %@",  time.description];
        }];
    }
    return self;
}
@end