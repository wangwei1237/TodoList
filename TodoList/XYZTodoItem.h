//
//  XYZTodoItem.h
//  TodoList
//
//  Created by wangwei on 14-8-3.
//  Copyright (c) 2014年 example. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZTodoItem : NSObject

@property NSString *itemName;
@property BOOL      completed;
@property (readonly) NSDate   *creationDate;

- (void)markAsCompleted:(BOOL)isComplete;
//- (void)setItemCreationDate:(NSDate *)creationDate;

@end
