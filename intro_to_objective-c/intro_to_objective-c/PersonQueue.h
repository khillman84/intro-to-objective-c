//
//  PersonQueue.h
//  intro_to_objective-c
//
//  Created by Kyle Hillman on 4/17/17.
//  Copyright © 2017 Kyle Hillman. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonQueue <NSObject>

@required
-(void)enqueue:(Person)person;
-(Person)dequeue;

@optional
-(int)count;

@end
