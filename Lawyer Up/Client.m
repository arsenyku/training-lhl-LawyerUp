//
//  Client.m
//  Lawyer Up
//
//  Created by asu on 2015-08-27.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import "Client.h"

@implementation Client

-(instancetype)initWithName:(NSString*)name
            caseDescription:(NSString*)caseDescription
               PracticeType:(PracticeType)caseType{
    self = [super init];
    if(self)
    {
        _name = name;
        _caseDescription = caseDescription;
        _caseType = caseType;
    }
    return self;
}

@end
