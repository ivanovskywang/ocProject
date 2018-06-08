//
//  NSObject+XYZToDoItem.h
//  firstweek
//
//  Created by Arlongwang on 2018/5/28.
//  Copyright © 2018年 Arlongwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZToDoItem:NSObject

@property NSString *itemName;
@property BOOL completed;
@property NSDate *completionDate;
-(void)markAsCompleted:(BOOL) isComplete;

@end
