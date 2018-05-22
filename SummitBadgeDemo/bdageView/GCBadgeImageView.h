//
//  GCBadgeImageView.h
//  SummitBadgeDemo
//
//  Created by Summit的Macmini on 2018/5/22.
//  Copyright © 2018年 Summit的Macmini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GCBadgeImageView : UIImageView

@property (nonatomic, assign) NSInteger badgeValue; //值
@property (nonatomic, strong) UILabel *badgeLabel;    //红色label

@end
