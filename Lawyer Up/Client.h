//
//  Client.h
//  Lawyer Up
//
//  Created by asu on 2015-08-27.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"

@interface Client : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *caseDescription;
@property (nonatomic, assign) PracticeType caseType;

-(instancetype)initWithName:(NSString*)name
            caseDescription:(NSString*)caseDescription
               PracticeType:(PracticeType)caseType;

@end
