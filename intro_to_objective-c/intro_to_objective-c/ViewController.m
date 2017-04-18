//
//  ViewController.m
//  intro_to_objective-c
//
//  Created by Kyle Hillman on 4/17/17.
//  Copyright © 2017 Kyle Hillman. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerDataSource.h"

#import "Person.h"
#import "Employee.h"



@interface ViewController () <ViewControllerDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [[EmployeeDatabase shared] allemployees]; this is how we access the singleton
    
    Employee *original = [[Employee alloc]initWithFirstName:@"Kyle" lastName:@"Hillman" age:@"33" yearsEmployed:@2 andManager:@"Myself"];
    
    NSLog(original.firstName);
    
    [Person sayHello];
}


@end
