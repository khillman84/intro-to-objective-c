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
    
    Employee *original = [[Employee alloc]initWithFirstName:@"Kyle" lastName:@"Hillman" age:@"33" yearsEmployed:@2 manager:@"Myself" email:@"khillman84@gmail.com"];
    Employee *numberTwo = [[Employee alloc]initWithFirstName:@"Angela" lastName:@"Hillman" age:@"33" yearsEmployed:@10 manager:@"Herself" email:@"hahaha@nope.com"];
    
    NSLog(original.firstName);
    NSLog(numberTwo.firstName);
}


@end
