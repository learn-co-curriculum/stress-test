//
//  FISGenericTestSpecSpec.m
//  StressTest
//
//  Created by Chris Gonzales on 6/4/14.
//  Copyright 2014 FIS. All rights reserved.
//

#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "KIF.h"
#import "Swizzlean.h"

SpecBegin(FISGenericTestSpec)

describe(@"FISGenericTestSpec", ^{
    
    describe(@"our generic tests; let's make them pass! Ignore the back-slashes in the below code, those are there so i can still use obj-c syntax in an NSString", ^{
        describe(@"let's work with the beKindOf matcher!", ^{
            it(@"create an NSString and test that it is kind of class NSString",^{
                expect(@"hamburger").to.beKindOf([NSString class]);
            });
            
            it(@"create an NSArray and test that it is kind of class NSArray",^{
                NSArray *breakfast = @[];
                expect(breakfast).to.beKindOf([NSArray class]);
            });
        });
        
        describe(@"let's work with the equal matcher!", ^{
            it(@"test that 4+4 is equal to 8",^{
                expect(4+4).to.equal(8);
            });
            
            it(@"create an NSString variable called 'name' with the value 'Chris'. test that your variable is equal to 'Chris'",^{
                NSString *name = @"Chris";
                expect(name).to.equal(@"Chris");
            });
            
            it(@"create an NSArray variable named 'healthyFood', set it equal to an array with the NSStrings 'poptarts' and 'hot pockets'. use a test to verify that your variable is equal to ['poptarts', 'hot pockets']",^{
                NSArray *healthyFood = @[@"poptarts", @"hot pockets"];
                expect(healthyFood).to.equal(@[@"poptarts", @"hot pockets"]);
            });
        });
        
        describe(@"let's work with the notEqual matcher!", ^{
            it(@"create an NSString variable called 'name' with the value 'Chris'. test that your variable is not equal to the NSString 'Joe'",^{
                NSString *name = @"Chris";
                expect(name).notTo.equal(@"Joe");
            });
            
            it(@"test that 4+4 is not equal to 18",^{
                expect(4+4).toNot.equal(18);
            });
            
            it(@"create an NSArray variable called 'healthyFood', set it equal to an array with the NSStrings 'poptarts' and 'hot pockets'. use a test to verify that your variable is not equal to ['celery', 'spinach']",^{
                NSArray *healthyFood = @[@"poptarts", @"hot pockets"];
                expect(healthyFood).toNot.equal(@[@"celery", @"spinach"]);
            });
            
            it(@"create an NSArray variable called 'healthyFood', set it equal to an array with the NSStrings 'poptarts' and 'hot pockets'. use a test to verify that your variable is not equal to ['hot pockets', 'poptarts']",^{
                NSArray *healthyFood = @[@"poptarts", @"hot pockets"];
                expect(healthyFood).toNot.equal(@[@"hot pockets", @"poptarts"]);
            });
        });
        
        describe(@"let's work with the beTruthy matcher! make tests below using beTruthy instead of the equal matcher.", ^{
            it(@"test that 4+4 is equal to 8",^{
                expect(4+4 == 8).to.beTruthy();
            });
            
            it(@"create an NSString variable called 'name' with the value 'Chris'. test that your variable is equal to 'Chris'",^{
                NSString *name = @"Chris";
                expect([name isEqualToString:@"Chris"]).to.beTruthy();
            });
        });
        
        describe(@"let's work with the beFalsy matcher! make tests below using beFalsy instead of the notEqual matcher", ^{
            it(@"create an NSString variable called 'name' with the value 'Chris'. test that your variable is not equal to the NSString 'Joe'",^{
                NSString *name = @"Chris";
                expect([name isEqualToString:@"Joe"]).to.beFalsy();
            });
            
            it(@"test that 4+4 is not equal to 18",^{
                expect(4+4 == 18).to.beFalsy();
            });
        });
        
        describe(@"let's finish with some collection-specific matchers, beginsWith and endsWith", ^{
            it(@"re-create your 'healthFood' array from earlier in the exercise. test that 'healthFood' begins with 'poptarts'",^{
                NSArray *healthyFood = @[@"poptarts", @"hot pockets"];
                expect(healthyFood).to.beginWith(@[@"poptarts"]);
            });
            
            it(@"re-create your 'healthFood' array from earlier in the exercise. test that 'healthFood' ends with with 'hot pockets'",^{
                NSArray *healthyFood = @[@"poptarts", @"hot pockets"];
                expect(healthyFood).to.endWith(@[@"hot pockets"]);
            });
        });
        
    });
});

SpecEnd
