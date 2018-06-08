//
//  ArlonItem.m
//  RandomItem
//
//  Created by Arlongwang on 2018/5/31.
//  Copyright © 2018年 Arlongwang. All rights reserved.
//

#import "ArlonItem.h"

@implementation ArlonItem
+(instancetype)randomItem
{
    NSArray *randomAdjecticeList = @[@"alpha",@"beta",@"delta"];
    NSArray *randomNounList = @[@"bear",@"Spok",@"Mac"];
    NSInteger adjectiveIndex = arc4random()%[randomAdjecticeList count];
    NSInteger nounIndex = arc4random()%[randomNounList count];
    NSString *randomName = [NSString stringWithFormat:@"%@%@",
                            randomAdjecticeList[adjectiveIndex],
                            randomNounList[nounIndex]];
    int randomValue = arc4random()%100;
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",'0'+arc4random()%10,'A'+arc4random()%26,'0'+arc4random()%10,'A'+arc4random()%26,'0'+arc4random()%10];
    ArlonItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    return newItem;
}

-(instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super init];
    if(self)
    {
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        _dateCrated = [[NSDate alloc] init];
    }
    return self;
}

-(instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

-(instancetype)init
{
    return [self initWithItemName:@"Item"];
}

-(void)setItemName:(NSString *)str
{
    _itemName = str;
}
-(NSString *)itemName
{
    return _itemName;
}
-(void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}
-(NSString *)serialNumber
{
    return _serialNumber;
}
-(void)setValueInDollers:(int)v
{
    _valueInDollars = v;
}
-(int)valueDollers
{
    return _valueInDollars;
}
-(NSDate *)dateCrated
{
    return _dateCrated;
}

-(NSString *)description
{
    NSString *descriptionString = [[NSString alloc]initWithFormat:@"%@ (%@):Worth $%d,recorded on %@",self.itemName,self.serialNumber,self.valueDollers,self.dateCrated];
    return descriptionString;
}
@end
