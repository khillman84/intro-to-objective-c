//
//  Employee.h
//  intro_to_objective-c
//
//  Created by Kyle Hillman on 4/17/17.
//  Copyright © 2017 Kyle Hillman. All rights reserved.
//

#import "Person.h"

@interface Employee : Person <NSCopying>

@property(strong, nonatomic) NSNumber *employeeNumber;
@property(strong, nonatomic) NSNumber *yearsEmployed;
@property(strong, nonatomic) NSString *managerName;
@property(strong, nonatomic) NSString *email;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSString *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                         manager:(NSString *)managerName
                           email:(NSString *)email;


@end
