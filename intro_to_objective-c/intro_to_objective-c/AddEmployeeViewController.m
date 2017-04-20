//
//  AddEmployeeViewController.m
//  intro_to_objective-c
//
//  Created by Kyle Hillman on 4/19/17.
//  Copyright © 2017 Kyle Hillman. All rights reserved.
//

#import "AddEmployeeViewController.h"
#import "Employee.h"
#import "EmployeeDatabase.h"

@interface AddEmployeeViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *age;
@property (weak, nonatomic) IBOutlet UITextField *email;


@end

@implementation AddEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)saveEmployee:(id)sender {
    Employee *original = [[Employee alloc]initWithFirstName:self.firstName.text lastName:self.lastName.text age:self.age.text yearsEmployed:@0 manager:@"Beelzebub" email:self.email.text];
    [[EmployeeDatabase shared] add: original];
    [self dismissViewControllerAnimated:YES completion:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadData" object:self];
    
}

- (IBAction)cancelAddEmployee:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

//}



@end
