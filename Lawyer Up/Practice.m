//
//  Practice.m
//  Lawyer Up
//
//  Created by asu on 2015-08-27.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import "Practice.h"


@interface Practice()
@property (nonatomic, strong) NSDictionary *rateTable;
@end

@implementation Practice

-(instancetype)initWithName:(NSString*)nameOfFirm
{
    self = [super init];
    if (self) {
        _nameOfFirm = nameOfFirm;
        
        _lawyers = [NSMutableDictionary new];
        
        _rateTable = @{ [NSNumber numberWithInt:(PracticeType)Family]:   @200.00,
                        [NSNumber numberWithInt:(PracticeType)Patent]:   @380.50,
                        [NSNumber numberWithInt:(PracticeType)Criminal]: @405.99,
                        [NSNumber numberWithInt:(PracticeType)Corporate]:@400.00 };
    }
    return self;
}

-(NSDictionary*)rates {
    return self.rateTable;
}

-(NSNumber*)rateForPracticeType:(PracticeType)practiceType {
    return self.rateTable[ [NSNumber numberWithInt:practiceType] ];
}

@end

