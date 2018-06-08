//
//  NSObject+XYZToDoItem.m
//  firstweek
//
//  Created by Arlongwang on 2018/5/28.
//  Copyright © 2018年 Arlongwang. All rights reserved.
//

#import "NSObject+XYZToDoItem.h"

@implementation XYZToDoItem
-(void)markAsCompleted:(BOOL)isComplete{
    self.completed = isComplete;
    [self setCompletionDate];
}
-(void)setCompletionDate{
    if(self.completed){
        self.completionDate = [NSDate date];
    }else{
        self.completionDate = nil;
    }
}
@end
