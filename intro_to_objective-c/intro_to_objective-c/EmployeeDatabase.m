//
//  EmployeeDatabase.m
//  intro_to_objective-c
//
//  Created by Kyle Hillman on 4/18/17.
//  Copyright © 2017 Kyle Hillman. All rights reserved.
//

#import "EmployeeDatabase.h"

@interface EmployeeDatabase ()

@property(strong, nonatomic) NSMutableArray *employees;

@end

@implementation EmployeeDatabase

//Singleton - Us the code snippet 'dispatch once'
+(instancetype)shared{
    
    static EmployeeDatabase *shared = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[[self class] alloc]init];
    });
    
    return shared;
    
}

//Initalizer
- (instancetype)init{
    
    self = [super init];
    if (self) {
        
        _employees = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:self.archiveURL]];
        
        if (!_employees) {
            _employees = [[NSMutableArray alloc]init];
        }
    }
    return self;
}

//Methods

-(void)save{
    BOOL success = [NSKeyedArchiver archiveRootObject:self.employees toFile:self.archiveURL.path];
    
    if (success) {
        NSLog(@"saved Employees");
    } else {
        NSLog(@"save failed");
    }
}

-(NSInteger)count{
    return self.employees.count;
}

-(NSArray *)allEmployees;{
    return self.employees;
}

-(Employee *)employeeAtIndex:(int)index{
    return [self.employees objectAtIndex: index];
}

-(void)add:(Employee *)employee{
    [self.employees addObject: employee];
    [self save];
}

-(void)remove:(Employee *)employee{
    [self.employees removeObject:employee];
    [self save];
}

-(void)removeEmployeeAtIndex:(int)index{
    [self.employees removeObjectAtIndex:index];
    [self save];
}

-(void)removeAllemployees{
    [self.employees removeAllObjects];
    [self save];
}

//MARK: Helper methods
-(NSURL *)documentsDirectory{
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    
    return documentsDirectoryURL;
}

-(NSURL *)archiveURL{
    return [[self documentsDirectory] URLByAppendingPathComponent:@"archive"];
}

@end
