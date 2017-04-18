//
//  Person.m
//  intro_to_objective-c
//
//  Created by Kyle Hillman on 4/17/17.
//  Copyright © 2017 Kyle Hillman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person : NSObject

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName
                           andAge:(NSString *)age{


    self = [super init];
    if (self) {
        firstName = firstName;
        lastName = lastName;
        age = age;
        
    }
    return self;
}

-(id)copyWithZone:(NSZone *)zone{
    Person *person = [[[self class] alloc]init];
    
    person.firstName = self.firstName;
    person.lastName = self.lastName;
    person.age = self.age;
    
    return person;
}

-(void)walk {
    
//    NSString *firstName = [self firstName];
//
//    NSLog(@"%@ is walking", firstName);
}

+(void)sayHello {
    NSLog(@"Hello");
}


@end
