//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Thomas Friesman on 2016-03-21.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView


@property (nonatomic) UIView *firstView;
@property (nonatomic) UIView *redImageView;
@property (nonatomic) UIView *greenImageView;
@property (nonatomic) UIView *blueImageView;
@property (nonatomic) UIView *yellowImageView;
@property (nonatomic) CGSize contentSize;

@property (nonatomic) CGPoint lastRecognizedInterval;


@end
