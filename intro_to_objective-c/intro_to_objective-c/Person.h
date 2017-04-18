//
//  Person.h
//  intro_to_objective-c
//
//  Created by Kyle Hillman on 4/17/17.
//  Copyright © 2017 Kyle Hillman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(strong, nonatomic) NSString *firstName;
@property(strong, nonatomic) NSString *lastName;
@property(strong, nonatomic) NSString *age;

//Name accessor methods
//-(NSString *)name;
//-(void)setName:(NSString *)name;

//Instance Method
-(void)walk;

//Class Method
+(void)sayHello;


@end
