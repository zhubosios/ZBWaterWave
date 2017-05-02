//
//  ViewController.m
//  ZBInvestment
//
//  Created by tankjoy on 17/5/2.
//  Copyright © 2017年 zhubo. All rights reserved.
//

#import "ViewController.h"
#import "WFHomeModel.h"
#import "WFHomeTableHeaderView.h"
#import "WFHomeTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *models;

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

//懒加载
- (NSMutableArray *)models
{
    if (!_models) {
        _models = [NSMutableArray array];
    }
    return _models;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //不显示导航栏
    // self.jz_wantsNavigationBarVisible = NO;
    
    self.navigationItem.title = @"金麦";
    
    //添加数据源
    [self loadData];
    
    //初始化子视图
    [self addChildView];

}

//假数据
- (void)loadData
{
    
    for (int i = 0; i< 10; i ++) {
        WFHomeModel *model = [WFHomeModel new];
        model.rate = (arc4random()%10)*1.0/10;
        [self.models addObject:model];
    }
  
}

- (void)addChildView
{
    
    //    WFHomeTableHeaderView *headerView = [[WFHomeTableHeaderView alloc]initWithFrame:CGRectMake(0, 0, kAppScreenWidth, 200)];
    //    headerView.backgroundColor = [UIColor orangeColor];
    
    WFHomeTableHeaderView *headerView = [WFHomeTableHeaderView show];
    
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, kAppScreenWidth, kAppScreenHeight) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.showsVerticalScrollIndicator = NO;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.backgroundColor = BackBaseColor;

    [self.view addSubview:tableView];
    
    [tableView registerNib:[UINib nibWithNibName:@"WFHomeTableViewCell" bundle:nil] forCellReuseIdentifier:@"homeCell"];
    
    tableView.tableHeaderView = headerView;
    _tableView = tableView;
    
}


#pragma mark --tableview数据源
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WFHomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"homeCell"];
    cell.model = self.models[indexPath.row];
    return cell;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.models.count;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return DPH(110);
}

@end
