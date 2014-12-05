//
// Created by Ian Dundas on 05/12/14.
// Copyright (c) 2014 Ian Dundas. All rights reserved.
//

#import "Clock.h"
#import "RACSignal.h"
#import "RACSignal+Operations.h"
#import "RACScheduler.h"

// private interface:
@interface Clock ()
@end

@implementation Clock
-(instancetype)init{
    if (self = [super init]) {
        _currentTimeSignal= [[RACSignal interval:1 onScheduler:[RACScheduler mainThreadScheduler]] map:^id (NSDate *time) {
            return [NSString stringWithFormat:@"Slow: %@",  time.description];
        }];
    }
    return self;
}

@end