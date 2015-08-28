//
//  Associate.m
//  Lawyer Up
//
//  Created by asu on 2015-08-27.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import "Associate.h"
#import "Lawyer.h"

@implementation Associate

-(void)addClientToClientList:(Client*)client forLawyer:(Lawyer*)lawyer{
    if (client.caseType == lawyer.specialty) {
	    lawyer.clientList [ client.name ] = client;
        NSLog(@"Added %@ to %@'s client list to resolve %@.", client.name, lawyer.name, client.caseDescription);
    } else {
        NSLog(@"Sorry, %@ is in %@ law and %@ is a %@ case",
              lawyer.name, lawyer.specialtyAsString, client.name,
              [Lawyer stringForPracticeType:client.caseType]);
    }
}

-(int)payableAmountForClient:(Client*)client forLawyer:(Lawyer*)lawyer{
    NSNumber *billableHours = @25;

    if ( [client.caseDescription length] < 10 ){
        billableHours = @5;
    } else if ( [client.caseDescription length] >= 10 &&
				[client.caseDescription length] <= 20 ) {
        billableHours = @10;
    }
    
    return [lawyer.rate floatValue] * [billableHours floatValue];
}


@end
