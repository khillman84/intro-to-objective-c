//
//  Person.m
//  intro_to_objective-c
//
//  Created by Kyle Hillman on 4/17/17.
//  Copyright © 2017 Kyle Hillman. All rights reserved.
//

#import "Person.h"

@implementation Person

//NSString *_name; //underlying instance variable
//
////Getter
//-(NSString *)name {
//    return _name;
//}
//
////Setter
//-(void)setName:(NSString *)name {
//    _name = name;
//}

-(void)walk {
    
    NSString *firstName = [self firstName];
    
    NSLog(@"%@ is walking", firstName);
}

+(void)sayHello {
    NSLog(@"Hello");
}

@end
