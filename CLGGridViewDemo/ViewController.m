//
//  ViewController.m
//  CLGGridViewDemo
//
//  Created by liugc on 2019/11/27.
//  Copyright © 2019 eleme. All rights reserved.
//

#import "ViewController.h"
#import "MyGridView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  MyGridView *grid = [[MyGridView alloc] initWithFrame:self.view.bounds];
  grid.backgroundColor = [UIColor clearColor];
  grid.items = @[UIColor.blueColor, UIColor.redColor, UIColor.blueColor, UIColor.greenColor];
  [grid reloadData];
  [self.view addSubview:grid];
}


@end
