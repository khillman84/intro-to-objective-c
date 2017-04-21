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
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
        
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

-(void)setFirstName:(NSString *)firstName{
    
    if(_firstName != firstName){
        
        [firstName retain];
        [_firstName release];
        
        _firstName = firstName;
    }
}

-(NSString *)firstNameDescription{
    NSString *description = [[[NSString alloc]initWithFormat:@"%@", self.firstName]autorelease];
    
    return description;
}

-(void)setLastName:(NSString *)lastName{
    
    if(_lastName != lastName){
        
        [lastName retain];
        [_lastName release];
        
        _lastName = lastName;
    }
}

-(NSString *)lastNameDescription{
    NSString *description = [[[NSString alloc]initWithFormat:@"%@", self.lastName]autorelease];
    
    return description;
}

-(void)setAge:(NSString *)age{
    
    if(_age != age){
        
        [age retain];
        [_age release];
        
        _age = age;
    }
}

-(NSString *)ageDescription{
    NSString *description = [[[NSString alloc]initWithFormat:@"%@", self.age]autorelease];
    
    return description;
}

@end
