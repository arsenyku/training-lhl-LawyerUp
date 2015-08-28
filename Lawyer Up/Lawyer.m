//
//  Lawyer.m
//  Lawyer Up
//
//  Created by asu on 2015-08-27.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import "Lawyer.h"
#import "Practice.h"
#import "Client.h"
#import "Associate.h"

@implementation Lawyer


-(instancetype)initWithName:(NSString*)name
                  specialty:(PracticeType)specialty
                    lawFirm:(Practice*)lawFirm
                   delegate:(id<AssociateProtocol>)delegate{

    self = [super init];
    if (self){
        _name = name;
        _specialty = specialty;
        _lawFirm = lawFirm;
        _delegate = delegate;
        _clientList = [NSMutableDictionary new];
    }
    return self;
}


-(NSNumber *)rate{
    if (self.lawFirm){
        return self.lawFirm.rates[ [NSNumber numberWithInt:self.specialty] ];
    } else {
        return @250.00;  // Default rate if lawyer has no firm.
    }
}

-(NSString*)specialtyAsString{
    return [Lawyer stringForPracticeType:self.specialty];
}

+(NSString*)stringForPracticeType:(PracticeType)practiceType{
    switch (practiceType) {
        case Family:
            return @"Family";
        case Corporate:
            return @"Corporate";
        case Criminal:
            return @"Criminal";
        case Patent:
            return @"Patent";
            
        default:
            break;
    }
}


@end
