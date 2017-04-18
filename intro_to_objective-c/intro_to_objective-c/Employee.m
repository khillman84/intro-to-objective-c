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

NSString *_employeeNumber;
NSString *_yearsEmployed;
NSString *_managersName;

//Getter
-(NSString *)emplyeeNumber{
    return _employeeNumber;
}

-(NSString *)yearsEmployed{
    return _yearsEmployed;
}

-(NSString *)managersName{
    return _managersName;
}

//Setter
-(void)setEmployeeNumber:(NSString *)employeeNumber{
    _employeeNumber = employeeNumber;
}

-(void)setYearsEmployed:(NSString *)yearsEmployed{
    _yearsEmployed = yearsEmployed;
}

-(void)setManagersName:(NSString *)managersName{
    _managersName = managersName;
}

@end
