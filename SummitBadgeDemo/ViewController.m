//
//  ViewController.m
//  SummitBadgeDemo
//
//  Created by Summit的Macmini on 2018/5/22.
//  Copyright © 2018年 Summit的Macmini. All rights reserved.
//

#import "ViewController.h"
#import "GCBadgeImageView.h"

@interface ViewController ()
@property (nonatomic, strong) UITableView *myTableView;
@property (nonatomic, strong) GCBadgeImageView *bdageImgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupMainView];
}

-(void)setupMainView{
    
    _bdageImgView = [[GCBadgeImageView alloc] initWithFrame:CGRectMake(100, 100, 40, 40)];
    _bdageImgView.backgroundColor = [UIColor yellowColor];
    
    //给badgevalue赋值
    _bdageImgView.badgeValue = 12;
    [self.view addSubview:_bdageImgView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
