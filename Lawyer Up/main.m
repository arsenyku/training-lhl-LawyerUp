//
//  main.m
//  Lawyer Up
//
//  Created by asu on 2015-08-27.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lawyer.h"
#import "Practice.h"
#import "Client.h"
#import "Associate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Initialize 1 Practice object.
        Practice *wolfRamAndHart = [[Practice alloc] initWithName:@"Wolf, Ram, and Hart"];
        
        //Initialize 2 Lawyer objects with a practice, a name and an unique specialization
        Lawyer *perryMason = [[Lawyer alloc] initWithName:@"Perry Mason"
                                                specialty:Criminal
                                                  lawFirm:wolfRamAndHart
                                                 delegate:nil];
        
        Lawyer *matlock = [[Lawyer alloc] initWithName:@"Ben Matlock"
                                             specialty:Family
                                               lawFirm:wolfRamAndHart
                                              delegate:nil];
        
        Lawyer *dennyCrane = [[Lawyer alloc] initWithName:@"Denny \"The Shat\" Crane"
                                             	specialty:Corporate
                                                  lawFirm:wolfRamAndHart
                                              	 delegate:nil];
        
        wolfRamAndHart.lawyers [ perryMason.name ] = perryMason;
        wolfRamAndHart.lawyers [ matlock.name ] = matlock;
        wolfRamAndHart.lawyers [ dennyCrane.name ] = dennyCrane;
        
        NSLog(@"Rates for the lawyers of %@", wolfRamAndHart.nameOfFirm);
        for (NSString* lawyerName in wolfRamAndHart.lawyers) {
            Lawyer* lawyer = wolfRamAndHart.lawyers[ lawyerName ];
            NSLog(@"%@ (%@ Law) - $%@", lawyer.name, lawyer.specialtyAsString, lawyer.rate);
        }
        
        
        
        //Initialize 2 Associate objects.
        
        Associate *mike = [[Associate alloc] init];
        Associate *john = [[Associate alloc] init];
        
        perryMason.delegate = mike;
        dennyCrane.delegate = john;
        
        Client *carAccidentVictim = [[Client alloc] initWithName:@"Whiplash McHurtsalot"
                                                 caseDescription:@"Rear ended while parked"
                                                    PracticeType:Criminal];

        Client *mouseAndRat = [[Client alloc] initWithName:@"Stinky and the Brain"
                                           caseDescription:@"Wants to take over the world"
                                              PracticeType:Corporate];
        
        [mike addClientToClientList:carAccidentVictim forLawyer:perryMason];
        NSLog(@"%@ must pay $%d", carAccidentVictim.name, [mike payableAmountForClient:carAccidentVictim forLawyer:perryMason]);
        
        [john addClientToClientList:mouseAndRat forLawyer:dennyCrane];
        NSLog(@"%@ must pay $%d", mouseAndRat.name, [john payableAmountForClient:mouseAndRat forLawyer:dennyCrane]);
        
        
        
    }
    return 0;
}
