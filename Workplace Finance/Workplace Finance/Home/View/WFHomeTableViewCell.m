//
//  WFHomeTableViewCell.m
//  WorkplaceFinance
//
//  Created by tankjoy on 17/4/25.
//  Copyright © 2017年 tankjoy. All rights reserved.
//

#import "WFHomeTableViewCell.h"
#import "WFProportionView.h"
#import "WFHomeModel.h"
@interface WFHomeTableViewCell ()


@property (weak, nonatomic) IBOutlet UILabel *ANNualizedLable;
@property (weak, nonatomic) IBOutlet UILabel *RaiseLable;
@property (weak, nonatomic) IBOutlet UILabel *termLable;
@property (weak, nonatomic) IBOutlet WFProportionView *proportionView;
@property (weak, nonatomic) IBOutlet UILabel *titleLable;

@property (weak, nonatomic) IBOutlet UILabel *rateLable;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titleH;

@end

@implementation WFHomeTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];

    _titleH.constant = DP(18);
    _titleLable.font = baseFont(DPH(13));
    NSString *oneStr = @"12%\n年化收益率";
    NSString *twoStr = @"100万元\n募集金额";
    NSString *threeStr = @"6个月\n投资期限";
   _ANNualizedLable.attributedText = [self setColor:[UIColor redColor] andStr:oneStr apace:7];
   _RaiseLable.attributedText = [self setColor:[UIColor blackColor] andStr:twoStr apace:6];
   _termLable.attributedText = [self setColor:[UIColor blackColor] andStr:threeStr apace:7];
}

- (void)setModel:(WFHomeModel *)model
{
    _model = model;
    
    _proportionView.rate = model.rate;
    
    _rateLable.text = [NSString stringWithFormat:@"%.f%%",model.rate*100];

}


- (NSMutableAttributedString *)setColor:(UIColor *)color andStr:(NSString *)str apace:(CGFloat)space
{

    
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc]init];
    //style.lineBreakMode = NSLineBreakByCharWrapping;
    style.alignment = NSTextAlignmentCenter;
    style.lineSpacing = 10;
    
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc]initWithString:str];
    
    [attStr addAttributes:@{NSParagraphStyleAttributeName:style} range:NSMakeRange(0, str.length)];
    
    [attStr addAttributes:@{NSForegroundColorAttributeName:color} range:NSMakeRange(0, str.length-space)];
     [attStr addAttributes:@{NSForegroundColorAttributeName:[UIColor grayColor]} range:NSMakeRange(str.length-space, space)];
    
    
    [attStr addAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:DPH(14)]} range:NSMakeRange(0, str.length-space)];
    
    [attStr addAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:DPH(11)]} range:NSMakeRange(str.length-space, space)];
    
    return attStr;


}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.contentView.wf_h-=10;
    self.contentView.wf_y+=10;


}

@end
