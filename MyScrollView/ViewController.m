//
//  ViewController.m
//  MyScrollView
//
//  Created by Thomas Friesman on 2016-03-21.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController () <UIScrollViewDelegate>

//@property (nonatomic) UIScrollView *scrollView;
@property (nonatomic) MyScrollView *scrollView;
@property (nonatomic) UIView *redImageView;
@property (nonatomic) UIView *greenImageView;
@property (nonatomic) UIView *blueImageView;
@property (nonatomic) UIView *yellowImageView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyScrollView *firstView = [[MyScrollView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:firstView];

    firstView.contentSize = self.view.frame.size;
    
    self.redImageView = [[UIView alloc] initWithFrame:CGRectMake(20.0, 20.0, 100, 100)];
    self.redImageView.backgroundColor = [UIColor redColor];
    [firstView addSubview:self.redImageView];

    self.greenImageView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    self.greenImageView.backgroundColor = [UIColor greenColor];
    [firstView addSubview:self.greenImageView];

    self.blueImageView = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    self.blueImageView.backgroundColor = [UIColor blueColor];
    [firstView addSubview:self.blueImageView];

    self.yellowImageView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    self.yellowImageView.backgroundColor = [UIColor yellowColor];
    [firstView addSubview:self.yellowImageView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
