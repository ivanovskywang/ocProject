//
//  NSObject+dataTestDemo.m
//  firstweek
//
//  Created by Arlongwang on 2018/5/28.
//  Copyright © 2018年 Arlongwang. All rights reserved.
//

#import "dataTestDemo.h"

@implementation  dataTestDemo

-(void)myTestCode{
    int n = 5;
    NSNumber *numberObject = [NSNumber numberWithInt:n];
    int y = [numberObject intValue];
    printf("y=%d\n",y);
    NSString *myString = @"My String\n";
    NSString *anotherString = [NSString stringWithFormat:@"%d %@", 1, @"String"];
    NSString *fromCString = [NSString stringWithCString:"A C string" encoding:(NSUTF8StringEncoding)];
    //printf("mystring:%s",myString);
    //printf("anotherstring:%s",anotherString);
    //printf("fromCString:%s",fromCString);
    NSNumber *myIntValue = @32;
    //printf("MyIntValue:%@\n",myIntValue);
    NSLog(@"MyIntValue: %@", myIntValue);
    //尝试使用数组
    id firstObject = @"someString";
    id secondObject = nil;
    id thirdObject = @"anotherString";
    NSArray *someArray = [NSArray arrayWithObjects:firstObject, secondObject, thirdObject, nil];
    NSUInteger numberOfItems = [someArray count];
    printf("\nitems of array:%d\n",numberOfItems);
    if ([someArray count] > 0) {
        NSLog(@"First item is: %@", [someArray objectAtIndex:0]);
    }
    NSArray *unsortedStrings = @[@"gammaString", @"alphaString", @"betaString"];
    NSArray *sortedStrings =
    [unsortedStrings sortedArrayUsingSelector:@selector(compare:)];
    //可变数组添加、替换、排序
    NSMutableArray *mutableArray = [NSMutableArray array];
    [mutableArray addObject:@"gamma"];
    [mutableArray addObject:@"alpha"];
    [mutableArray addObject:@"beta"];
    [mutableArray replaceObjectAtIndex:0 withObject:@"epsilon"];
    [mutableArray sortUsingSelector:@selector(caseInsensitiveCompare:)];
    
    //尝试使用字典
    id someObject = @"someObject";
    NSNumber *someValue = @32;
    NSDictionary *dictionary = @{
                                 @"anObject" : someObject,
                                 @"helloString" : @"Hello, World!",
                                 @"magicNumber" : @42,
                                 @"aValue" : someValue
                                 };
    //查询方法
    NSNumber *storedNumber1 = [dictionary objectForKey:@"magicNumber"];
    NSNumber *storedNumber2 = dictionary[@"magicNumber"];
    
    //无对象
    NSArray *array = @[ @"string", @42, [NSNull null] ];
}


@end
