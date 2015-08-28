//
//  Practice.h
//  Lawyer Up
//
//  Created by asu on 2015-08-27.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lawyer.h"

@interface Practice : NSObject

@property (nonatomic, strong) NSString *nameOfFirm;
@property (nonatomic, strong) NSMutableDictionary *lawyers;

-(instancetype)initWithName:(NSString*)nameOfFirm;

- (NSDictionary*) rates;

@end
