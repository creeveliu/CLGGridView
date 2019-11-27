//
//  GridView.m
//  LBTATools
//
//  Created by liugc on 2019/11/27.
//  Copyright © 2019 eleme. All rights reserved.
//

#import "GridView.h"

@implementation GridView

- (instancetype)initWithFrame:(CGRect)frame
{
  UICollectionViewFlowLayout *layout = UICollectionViewFlowLayout.new;
  self = [super initWithFrame:frame collectionViewLayout:layout];
  if (self) {
    [self registerClass:self.cellClass forCellWithReuseIdentifier:NSStringFromClass(self.cellClass)];
    
    self.delegate = self;
    self.dataSource = self;
  }
  return self;
}

- (Class)cellClass
{
  [NSException raise:NSInternalInconsistencyException format:@"Your must override cellClass in your gridview class" arguments:nil];
  return nil;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return self.items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass(self.cellClass) forIndexPath:indexPath];
  if ([cell respondsToSelector:@selector(item)]) {
    ((id<GridCell>)cell).item = self.items[indexPath.row];
  } else {
    [NSException raise:NSInternalInconsistencyException format:@"Your must implement `@property (nonatomic, strong) NSObject *item` in your cell class" arguments:nil];
  }

  return cell;
}



@end
