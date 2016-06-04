//
//  MKJChatTableViewCell.m
//  纯代码气泡聊天
//
//  Created by 宓珂璟 on 16/6/3.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import "MKJChatTableViewCell.h"

@implementation MKJChatTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        self.headImageView = [[UIImageView alloc] init];
        self.headImageView.layer.cornerRadius = 25.0f;
        self.headImageView.layer.borderWidth = 1.0f;
        self.headImageView.clipsToBounds = YES;
        [self.contentView addSubview:self.headImageView];
        
        self.backView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.backView];
        
        self.contentLabel = [[UILabel alloc] init];
        self.contentLabel.numberOfLines = 0;
        self.contentLabel.font = [UIFont systemFontOfSize:17.0f];
        [self.backView addSubview:self.contentLabel];
    }
    return self;
}

- (void)refreshCell:(MKJChatModel *)model
{
    // 首先计算文本宽度和高度
    CGRect rec = [model.msg boundingRectWithSize:CGSizeMake(200, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:17]} context:nil];
    // 气泡
    UIImage *image = nil;
    // 头像
    UIImage *headImage = nil;
    // 模拟左边
    if (!model.isRight)
    {
        // 当输入只有一个行的时候高度就是20多一点
        self.headImageView.frame = CGRectMake(10, rec.size.height - 18, 50, 50);
        self.backView.frame = CGRectMake(60, 10, rec.size.width + 20, rec.size.height + 20);
        image = [UIImage imageNamed:@"bubbleSomeone"];
        headImage = [UIImage imageNamed:@"head.JPG"];
    }
    else // 模拟右边
    {
        self.headImageView.frame = CGRectMake(375 - 60, rec.size.height - 18, 50, 50);
        self.backView.frame = CGRectMake(375 - 60 - rec.size.width - 20, 10, rec.size.width + 20, rec.size.height + 20);
        image = [UIImage imageNamed:@"bubbleMine"];
        headImage = [UIImage imageNamed:@"naruto@3x"];
//        image.leftCapWidth		
    }
    // 拉伸图片 参数1 代表从左侧到指定像素禁止拉伸，该像素之后拉伸，参数2 代表从上面到指定像素禁止拉伸，该像素以下就拉伸
    image = [image stretchableImageWithLeftCapWidth:image.size.width/2 topCapHeight:image.size.height/2];
    self.backView.image = image;
    self.headImageView.image = headImage;
    // 文本内容的frame
    self.contentLabel.frame = CGRectMake(model.isRight ? 5 : 13, 5, rec.size.width, rec.size.height);
    self.contentLabel.text = model.msg;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
