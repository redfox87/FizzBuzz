//
//  AppDelegate.m
//  FizzBuzz-Objc
//
//  Created by Joshua Howland on 8/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    

        
        // step 4
        
        for (int x = 1; x < 100; x++) {
            if ([self isBuzzed:x] == true && [self isFizzed:x]== false) {
                NSLog(@"Buzz");
            } else if ([self isBuzzed:x] == false && [self isFizzed:x] == true) {
                NSLog(@"Fizz");
            } else if ([self isBuzzed:x] == true && [self isFizzed:x] == true) {
                NSLog(@"FizzBuzz");
            } else {
                NSLog(@"%i",x);
            }
        }
        
        return YES;
    }

    
    -(BOOL)isBuzzed:(int)aValue {
        if (aValue % 3 == 0) {
            //        NSLog(@"is true");
            return true;
        }
        else {
            //      NSLog(@"is false");
            return false;
        }
    }
    

    
    -(BOOL)isFizzed:(int)aValue {
        if (aValue % 5 == 0) {
            //        NSLog(@"is true");
            return true;
        }
        else {
            //      NSLog(@"is false");
            return false;
        }
    }
    
    
    
    @end