//
//  main.m
//  RandomItem
//
//  Created by Arlongwang on 2018/5/30.
//  Copyright © 2018年 Arlongwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArlonItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSMutableArray *items=[[NSMutableArray alloc]init];
        for(int i=0;i<10;i++)
        {
            ArlonItem *item = [ArlonItem randomItem];
            [items addObject:item];
        }
        
        for(ArlonItem *item in items)
        {
            NSLog(@"%@",item);
        }
        items = nil;
    }
    return 0;
}
