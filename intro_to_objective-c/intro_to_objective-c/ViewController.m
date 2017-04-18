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



@interface ViewController () <ViewControllerDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self requiredNumberForEachItem:100];
    
    
//    Person *kyle = [[Person alloc] init];
    
//    [kyle setName:@"Kyle"];
//    
//    [kyle walk];
    
    [Person sayHello];
}

-(void)requiredNumberForEachItem:(int)number{
    
}


@end
