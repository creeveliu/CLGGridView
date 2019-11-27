//
//  MyGridView.m
//  LBTATools
//
//  Created by liugc on 2019/11/27.
//  Copyright © 2019 eleme. All rights reserved.
//

#import "MyGridView.h"


@interface MyGridCell : UICollectionViewCell <GridCell>

@property (nonatomic, strong) NSObject *item;

@end


@implementation MyGridCell

- (void)setItem:(UIColor *)item
{
  _item = item;
  self.backgroundColor = item;
}

@end

@implementation MyGridView


- (Class)cellClass
{
  return MyGridCell.class;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
  return CGSizeMake(collectionView.frame.size.width, 100);
}

@end
