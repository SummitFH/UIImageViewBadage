//
//  GCBadgeImageView.m
//  SummitBadgeDemo
//
//  Created by Summit的Macmini on 2018/5/22.
//  Copyright © 2018年 Summit的Macmini. All rights reserved.
//


#define     gc_scale_width     [UIScreen mainScreen].bounds.size.width/320
#define     gc_scale_height    [UIScreen mainScreen].bounds.size.height/568

#import "GCBadgeImageView.h"

@implementation GCBadgeImageView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupMainView];
    }
    return self;
}

//创建界面
-(void)setupMainView{
    _badgeLabel = [[UILabel alloc] init];
    _badgeLabel.font = [UIFont systemFontOfSize:10*gc_scale_width];
    _badgeLabel.backgroundColor = [UIColor redColor];
    _badgeLabel.textColor = [UIColor whiteColor];
    _badgeLabel.clipsToBounds = YES;
    _badgeLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_badgeLabel];
}
-(void)setBadgeValue:(NSInteger)badgeValue{
    _badgeValue = badgeValue;
    [self resetFrame];
}

//重新更新frame
-(void)resetFrame{
    
    CGFloat badgeW;
    CGFloat badgeH;
    
    //判断label是否显示
    if (_badgeValue <= 0) {
        _badgeLabel.hidden = YES;
    }else{
        _badgeLabel.hidden = NO;
    }
    
    if (_badgeValue > 99) {
        _badgeLabel.text = @"99+";
    }else{
        _badgeLabel.text = [NSString stringWithFormat:@"%ld",_badgeValue];
    }
    
    badgeH = 15*gc_scale_width;
    badgeW = [_badgeLabel sizeThatFits:CGSizeMake(MAXFLOAT, badgeH)].width + 5*gc_scale_width;
    
    if (badgeW > 20*gc_scale_width) {
        badgeW = 20*gc_scale_width;
    }
    
    if (badgeW < badgeH) {
        badgeW = badgeH;
    }
    
    _badgeLabel.frame = CGRectMake(self.frame.size.width-badgeW/3*2, - badgeW/3, badgeW, badgeH);
    _badgeLabel.layer.cornerRadius = badgeH/2;
    
}

@end
