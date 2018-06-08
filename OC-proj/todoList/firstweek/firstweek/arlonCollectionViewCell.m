//
//  NSObject+arlonCollectionViewCell.m
//  firstweek
//
//  Created by Arlongwang on 2018/6/6.
//  Copyright © 2018年 Arlongwang. All rights reserved.
//

#import "arlonCollectionViewCell.h"
#import "arlonDownload.h"

@implementation arlonCollectionViewCell

//重写初始化方法
-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.myImgView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 60, 60)];
        [self setCellImage:@"demo.jpg"];
        [self.contentView addSubview:self.myImgView];
        self.myLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 70, 70, 40)];
        [self setCellLabelText:@"demo"];
        [self.contentView addSubview:self.myLabel];
        //可以设置圆角
        self.layer.cornerRadius = 10;
    }
    return self;
}



//更改图片
-(void)setCellImage:(NSString*)ImgName
{
    arlonDownload *downloadImage = [[arlonDownload alloc] init];
    
    [self.myImgView setImage:[UIImage imageWithData:[downloadImage downloadData]]];
}

//更改文字
-(void)setCellLabelText:(NSString*)text
{
    [self.myLabel setText:text];
}

@end
