//
//  NSObject+arlonCollectionViewController.h
//  firstweek
//
//  Created by Arlongwang on 2018/6/6.
//  Copyright © 2018年 Arlongwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "arlonCollectionViewCell.h"

//@interface arlonCollectionViewController: UIViewController<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@interface arlonCollectionViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>


@property(strong,nonatomic)UICollectionView * myCollection;
@property(strong,nonatomic)NSMutableArray * myArray;
@end
