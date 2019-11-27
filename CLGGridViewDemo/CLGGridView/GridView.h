//
//  GridView.h
//  LBTATools
//
//  Created by liugc on 2019/11/27.
//  Copyright © 2019 eleme. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GridCell <NSObject>

@property (nonatomic, strong) NSObject *item;

@end

@interface GridView : UICollectionView <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>

@property (nonatomic, copy) NSArray *items;
@property (nonatomic, assign, readonly) Class cellClass;

@end

NS_ASSUME_NONNULL_END
