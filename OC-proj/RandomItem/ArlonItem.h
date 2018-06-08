//
//  ArlonItem.h
//  RandomItem
//
//  Created by Arlongwang on 2018/5/31.
//  Copyright © 2018年 Arlongwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArlonItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCrated;
}
+(instancetype)randomItem;

//指定初始化方法
-(instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;
-(instancetype)initWithItemName:(NSString *)name;

-(void)setItemName:(NSString *)str;
-(NSString *)itemName;
-(void)setSerialNumber:(NSString *)str;
-(NSString *)serialNumber;
-(void)setValueInDollers:(int)v;
-(int)valueDollers;
-(NSDate *)dateCrated;



@end
