//
//  MKJInputView.m
//  纯代码气泡聊天
//
//  Created by 宓珂璟 on 16/6/3.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import "MKJInputView.h"

@implementation MKJInputView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.textField = [[UITextField alloc] initWithFrame:CGRectMake(5, 0, frame.size.width - 100 - 5, frame.size.height)];
        self.textField.borderStyle = UITextBorderStyleRoundedRect;
        self.textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        [self addSubview:self.textField];
        
        self.button = [UIButton buttonWithType:UIButtonTypeCustom];
        self.button.frame = CGRectMake(frame.size.width - 80, 0, 50, frame.size.height);
        [self.button setTitle:@"发送" forState:UIControlStateNormal];
        [self.button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        self.button.layer.borderWidth = 1.0f;
        self.button.layer.borderColor = [UIColor blackColor].CGColor;
        self.button.layer.cornerRadius = 8;
        [self addSubview:self.button];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
