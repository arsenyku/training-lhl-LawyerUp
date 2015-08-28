//
//  Lawyer.h
//  Lawyer Up
//
//  Created by asu on 2015-08-27.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Client;
@class Lawyer;
@class Practice;

@protocol AssociateProtocol <NSObject>

-(void)addClientToClientList:(Client*)client forLawyer:(Lawyer*)lawyer;
-(int)payableAmountForClient:(Client*)client forLawyer:(Lawyer*)lawyer;

@end


typedef NS_ENUM(NSInteger, PracticeType) {
    Family,
    Corporate,
    Criminal,
    Patent
};

@interface Lawyer : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) Practice *lawFirm;
@property (nonatomic, assign) PracticeType specialty;
@property (nonatomic, strong) NSMutableDictionary *clientList;
@property (nonatomic, strong) id<AssociateProtocol> delegate;

-(instancetype)initWithName:(NSString*)name
                  specialty:(PracticeType)specialty
                    lawFirm:(Practice*)lawFirm
                   delegate:(id<AssociateProtocol>)delegate;

-(NSNumber *)rate;

-(NSString*)specialtyAsString;


+(NSString*)stringForPracticeType:(PracticeType)practiceType;
@end
