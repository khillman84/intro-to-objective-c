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
#import "EmployeeDatabase.h"



@interface ViewController () <ViewControllerDataSource, UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UITableView *table;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.table.dataSource = self;
    
    
//    Employee *original = [[Employee alloc]initWithFirstName:@"Kyle" lastName:@"Hillman" age:@"33" yearsEmployed:@2 manager:@"Myself" email:@"khillman84@gmail.com"];
//    Employee *numberTwo = [[Employee alloc]initWithFirstName:@"Angela" lastName:@"Hillman" age:@"33" yearsEmployed:@10 manager:@"Herself" email:@"hahaha@nope.com"];
    
//    [[EmployeeDatabase shared] add: original];
//    [[EmployeeDatabase shared] add:numberTwo];

//    [[EmployeeDatabase shared] removeAllemployees];

    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[EmployeeDatabase shared] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.table dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [[EmployeeDatabase shared] employeeAtIndex:indexPath.row].firstName;
    
    return cell;
}


@end
