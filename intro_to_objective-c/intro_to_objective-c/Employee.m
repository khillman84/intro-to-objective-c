//
//  Employee.m
//  intro_to_objective-c
//
//  Created by Kyle Hillman on 4/17/17.
//  Copyright © 2017 Kyle Hillman. All rights reserved.
//

#import "Employee.h"
#import "Person.h"

@implementation Employee : Person

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSString *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                         manager:(NSString *)managerName
                           email:(NSString *)email{
    
    self = [super initWithFirstName:firstName lastName:lastName andAge:age];
    
    if (self) {
       _yearsEmployed = yearsEmployed;
       _managerName = managerName;
       _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
       _email = email;
    }
    
    return self;
}

//Decode from file system
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    
    if (self) {
        self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
        self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
        self.age = [aDecoder decodeObjectForKey:@"age"];
        
        self.yearsEmployed = [aDecoder decodeObjectForKey:@"yearsEmployed"];
        self.managerName = [aDecoder decodeObjectForKey:@"managerName"];
        self.employeeNumber = [aDecoder decodeObjectForKey:@"employeeNumber"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
    }
    return self;
}

//Write to system
-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.firstName forKey:@"firstName"];
    [aCoder encodeObject:self.lastName forKey:@"lastName"];
    [aCoder encodeObject:self.age forKey:@"age"];
    [aCoder encodeObject:self.yearsEmployed forKey:@"yearsEmployed"];
    [aCoder encodeObject:self.managerName forKey:@"managerName"];
    [aCoder encodeObject:self.employeeNumber forKey:@"employeeNumber"];
    [aCoder encodeObject:self.email forKey:@"email"];
}

-(id)copyWithZone:(NSZone *)zone{
    
    Employee *employee = [super copyWithZone:zone];
    
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    employee.email = self.email;
    
    return employee;
}

-(void)setYearsEmployed:(NSNumber *)yearsEmployed{
    
    if(_yearsEmployed != yearsEmployed){
        
        [yearsEmployed retain];
        [_yearsEmployed release];
        
        _yearsEmployed = yearsEmployed;
    }
}

-(NSNumber *)yearsEmployedDescription{
    NSNumber *description = [[[NSNumber alloc]initWithFormat:@"%@", self.yearsEmployed]autorelease];
    
    return description;
}

-(void)setManagerName:(NSString *)managerName{
    
    if(_managerName != managerName){
        
        [managerName retain];
        [_managerName release];
        
        _managerName = managerName;
    }
}

-(NSString *)managerNameDescription{
    NSString *description = [[[NSString alloc]initWithFormat:@"%@", self.managerName]autorelease];
    
    return description;
}

-(void)setEmail:(NSString *)email{
    
    if(_email != email){
        
        [email retain];
        [_email release];
        
        _email = email;
    }
}

-(NSString *)emailDescription{
    NSString *description = [[[NSString alloc]initWithFormat:@"%@", self.email]autorelease];
    
    return description;
}

@end
