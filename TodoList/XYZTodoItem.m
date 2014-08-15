//
//  XYZTodoItem.m
//  TodoList
//
//  Created by wangwei on 14-8-3.
//  Copyright (c) 2014年 example. All rights reserved.
//

#import "XYZTodoItem.h"

@interface XYZTodoItem()
@property NSDate *completionDate;
@end

@implementation XYZTodoItem

- (void)markAsCompleted:(BOOL)isComplete
{
    self.completed = isComplete;
    [self setCompletionDate];
}

- (void)setCompletionDate
{
    if (self.completed) {
        self.completionDate = [NSDate date];
    } else {
        self.completionDate = nil;
    }
}

@end
