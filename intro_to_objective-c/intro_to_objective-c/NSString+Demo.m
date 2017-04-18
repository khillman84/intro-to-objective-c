//
//  NSString+Demo.m
//  intro_to_objective-c
//
//  Created by Kyle Hillman on 4/17/17.
//  Copyright © 2017 Kyle Hillman. All rights reserved.
//

#import "NSString+Demo.h"

@implementation NSString (Demo)

-(NSArray *)selfArray: (NSString *)string{
    NSArray* stringArray = [string componentsSeparatedByString:@""];
    return stringArray;
}


+(NSString *)reverseString: (NSString *)string{
    NSMutableString* reversed = [NSMutableString stringWithCapacity:string.length];
    
    for (int i = (int)string.length-1; i>= 0; i--){
        [reversed appendFormat:@"%c", [string characterAtIndex:i]];
    }
    return reversed;
}

@end
