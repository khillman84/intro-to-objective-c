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

//MARK: Helper methods
-(NSURL *)documentsDirectory{
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    
    return documentsDirectoryURL;
}

-(NSURL *)archiveURL{
    return [[self documentsDirectory] URLByAppendingPathComponent:@"archive"];
}

@end
