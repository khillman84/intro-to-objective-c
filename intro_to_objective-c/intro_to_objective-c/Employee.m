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

-(id)copyWithZone:(NSZone *)zone{
    
    Employee *employee = [super copyWithZone:zone];
    
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    employee.email = self.email;
    
    return employee;
}

@end
