# CLGGridView
用很少的代码实现简单的CollectionView

## 安装方法
将Demo工程的CLGGridView文件夹拖入你的工程，然后在需要的地方import头文件即可

## 使用方法

前提，新建工程，新建一个UICollectionViewCell的子类（假设为MyCell）

### 1. Subclass `GridView`

```
@interface MyGridView : GridView

@end
```

### 2. Override `cellClass`方法，返回你的UICollectionViewCell及其尺寸

```
...
#import "MyCell.h"
...

- (Class)cellClass {
  return MyCell.class;
}
```

你也可以自定义cell的尺寸，和原来UICollectionView一样，实现UICollectionViewDelegateFlowLayout的`sizeForItemAtIndexPath`即可。

```
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
  return CGSizeMake(collectionView.frame.size.width, 100);
}
```



### 3. 让你的Cell遵循GridCell协议

```
//MyCell.h

@interface MyCell : UICollectionViewCell <GridCell>

@property (nonatomic, strong) NSObject *item;

@end


@implementation MyCell

- (void)setItem:(UIColor *)item {
  _item = item;
  self.backgroundColor = item;
}

@end
```

实现item属性，并override `setItem:`方法，在里面实现想要的效果（这里以设置背景色为例）

### 4. 在ViewController中添加GridView

```
MyGridView *grid = [[MyGridView alloc] initWithFrame:CGRectMake(40, 40, 300, 400)];
grid.backgroundColor = [UIColor orangeColor];
grid.items = @[UIColor.blueColor, UIColor.redColor, UIColor.blueColor, UIColor.greenColor];
[grid reloadData];
[self.view addSubview:grid];
```

