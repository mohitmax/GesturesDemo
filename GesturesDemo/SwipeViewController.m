//
//  SwipeViewController.m
//  GesturesDemo
//
//  Created by Mohit Sadhu on 1/22/15.
//  Copyright (c) 2015 ms. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@end

@implementation SwipeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeToRight:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    
    UISwipeGestureRecognizer *swipeleft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeToLeft:)];
    swipeleft.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [self.view addGestureRecognizer:swipeRight];
    [self.view addGestureRecognizer:swipeleft];
}

- (void)swipeToRight: (UISwipeGestureRecognizer *)swipeGesture
{
    [UIView animateWithDuration:0.8
                     animations:^()
                                {
                                    self.centerView.frame = CGRectOffset(self.centerView.frame, 320.0, 0.0);
                                    self.leftView.frame = CGRectOffset(self.leftView.frame, 320.0, 0.0);
                                    self.rightView.frame = CGRectOffset(self.rightView.frame, 320.0, 0.0);
                                }];
}

- (void)swipeToLeft: (UISwipeGestureRecognizer *)swipeGesture
{
    [UIView animateWithDuration:0.5
                     animations:^()
     {
         self.centerView.frame = CGRectOffset(self.centerView.frame, -320.0, 0.0);
         self.leftView.frame = CGRectOffset(self.leftView.frame, -320.0, 0.0);
         self.rightView.frame = CGRectOffset(self.rightView.frame, -320.0, 0.0);
     }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
