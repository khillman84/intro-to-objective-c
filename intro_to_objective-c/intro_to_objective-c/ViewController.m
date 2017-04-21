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

static void *kvoContext = &kvoContext;

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

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    if (context == kvoContext) {
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[EmployeeDatabase shared] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.table dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [[EmployeeDatabase shared] employeeAtIndex:indexPath.row].firstName;
    
    return cell;
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if(editingStyle == UITableViewCellEditingStyleDelete){
        [[EmployeeDatabase shared] removeEmployeeAtIndex:indexPath.row];
        [tableView reloadData];
    }
}

@end



























