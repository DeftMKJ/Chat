//
//  MKJChatTableViewCell.h
//  纯代码气泡聊天
//
//  Created by 宓珂璟 on 16/6/3.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MKJChatModel.h"
@interface MKJChatTableViewCell : UITableViewCell

@property (nonatomic,strong) UIImageView *headImageView; // 用户头像
@property (nonatomic,strong) UIImageView *backView; // 气泡
@property (nonatomic,strong) UILabel *contentLabel; // 气泡内文本

- (void)refreshCell:(MKJChatModel *)model; // 安装我们的cell

@end
