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

//Singleton - Us the code snippet
+(instancetype)shared{
    
    static EmployeeDatabase *shared = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[[self class] alloc]init];
    });
    
    return shared;
    
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.employees = [[NSMutableArray alloc]init];
    }
    return self;
}

-(NSInteger)count{
    return self.employees.count;
}

-(NSArray *)allEmployees;{
    for(Employee *employee in self.employees){
        NSLog(@"%@", employee.firstName);
    }
    return _employees;
}

-(Employee *)employeeAtIndex:(int)index{
    return [self.employees objectAtIndex: index];
}

-(void)add:(Employee *)employee{
    [self.employees addObject: employee];
}

-(void)remove:(Employee *)employee{
    [self.employees removeObject:employee];
}

-(void)removeEmployeeAtIndex:(int)index{
    [self.employees removeObjectAtIndex:index];
}

-(void)removeAllemployees{
    [self.employees removeAllObjects];
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
