//
//  TestController.m
//  Workplace Finance
//
//  Created by tankjoy on 17/4/18.
//  Copyright © 2017年 tankjoy. All rights reserved.
//

#import "WFHomeController.h"
#import "TwoController.h"
#import "WFHomeTableViewCell.h"
#import "WFHomeModel.h"
#import "WFHomeTableHeaderView.h"
@interface WFHomeController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *models;

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation WFHomeController

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
    
    //初始化子视图
    [self addChildView];

    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
    header.automaticallyChangeAlpha = YES;
    // 马上进入刷新状态
    [header beginRefreshing];
    // 设置header
    self.tableView.mj_header = header;
    
}
- (void)loadData
{
    [self.models removeAllObjects];
    //假数据
    for (int i = 0; i< 10; i ++) {
        WFHomeModel *model = [WFHomeModel new];
        model.rate = (arc4random()%10)*1.0/10;
        [self.models addObject:model];
    }

    __weak UITableView *tableView = self.tableView;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [tableView reloadData];
        
        [tableView.mj_header endRefreshing];
    });

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

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

    TwoController *twoVC = [TwoController new];
    

    [self.navigationController pushViewController:twoVC animated:YES];

}
@end
