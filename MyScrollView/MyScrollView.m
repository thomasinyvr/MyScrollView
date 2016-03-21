//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Thomas Friesman on 2016-03-21.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import "MyScrollView.h"
#import "ViewController.h"




@implementation MyScrollView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(moveTheFrame:)];
        [self addGestureRecognizer:panGesture];
    }
    
    return self;
}

-(void)moveTheFrame:(UIPanGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateBegan) {
        self.lastRecognizedInterval = self.bounds.origin;
        
    } CGPoint thisInterval = [sender translationInView:self];
    
    CGFloat xDif = self.lastRecognizedInterval.x - thisInterval.x;
    CGFloat yDif = self.lastRecognizedInterval.y  - thisInterval.y;
    
    if ((fabsf(xDif) < self.contentSize.width) && (fabsf(yDif) < self.contentSize.height)) {
        self.bounds = CGRectMake(xDif, yDif, self.bounds.size.width, self.bounds.size.height);
    }
}

//-(void)scrollView
//
//{
//
//self.firstView = [[UIView alloc]initWithFrame:self.view.frame];
//
//self.redImageView = [[UIView alloc] initWithFrame:CGRectMake(20.0, 20.0, 100, 100)];
//self.redImageView.backgroundColor = [UIColor redColor];
//self.greenImageView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
//self.greenImageView.backgroundColor = [UIColor greenColor];
//self.blueImageView = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
//self.blueImageView.backgroundColor = [UIColor blueColor];
//self.yellowImageView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
//self.yellowImageView.backgroundColor = [UIColor yellowColor];
//
//[self.firstView addSubview:self.redImageView];
//[self.firstView addSubview:self.greenImageView];
//[self.firstView addSubview:self.blueImageView];
//[self.firstView addSubview:self.yellowImageView];
//
//[self.view addSubview:self.firstView];
//
//}
//
//






/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
