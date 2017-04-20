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

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleData) name:@"reloadData" object:nil];
    
    
}

-(void)handleData {
    [self.table reloadData];
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
