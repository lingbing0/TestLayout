//
//  ViewController.m
//  TestCollectionView
//
//  Created by Chris on 2017/4/14.
//  Copyright © 2017年 Chris. All rights reserved.
//

#import "ViewController.h"
#import "LastCell.h"
@interface ViewController () <UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) NSArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatData];
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //预估高度
    layout.estimatedItemSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, 200);
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    [self.view addSubview:self.collectionView];
    [self.collectionView registerClass:[LastCell class] forCellWithReuseIdentifier:@"LastCell"];
}
- (void)creatData{
    self.dataArray = @[@"测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试",@"测试测试测试测试测试测试测试测试",@"测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试",@"测试测试测试测试测试测试测试测试测试测试测试测试测试",@"测试测试测试测试测试测试测试测试测试测试测试测试",@"测试测试测试测试测试测试测试测试测试",@"测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试",@"测试测试测试测试测试测试测试测试测试测试测试测试",@"测试测试测试测试测试测试测试测试测试测试测试",@"测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试"];
    

}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LastCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"LastCell" forIndexPath:indexPath];
   
    cell.testLabel.text = self.dataArray[indexPath.item];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
