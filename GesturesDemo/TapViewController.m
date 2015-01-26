//
//  TapViewController.m
//  GesturesDemo
//
//  Created by Mohit Sadhu on 1/22/15.
//  Copyright (c) 2015 ms. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@end

@implementation TapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITapGestureRecognizer *singleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapGesture:)];
//    [self.testView addGestureRecognizer:singleTapGestureRecognizer];
    [self.view addGestureRecognizer:singleTapGestureRecognizer];
    
    
    //numberOfTapsRequired can be achieved by one finger as well.
    //numberOfTouchesRequired specifies the number of different touches(fingers) that are needed.
    UITapGestureRecognizer *doubleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDoubleTapGesture:)];
    doubleTapGestureRecognizer.numberOfTapsRequired = 2;
    doubleTapGestureRecognizer.numberOfTouchesRequired = 2;
    [self.view addGestureRecognizer:doubleTapGestureRecognizer];
    
    UILongPressGestureRecognizer *longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleLongPressGestureWithRecognizer:)];
    [self.testView addGestureRecognizer:longPressGesture];

}

- (void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer
{
    CGFloat newWidth = 100.0;
    
    if (self.testView.frame.size.width == 100.0)
    {
        newWidth = 200.0;
    }
    
    CGPoint currentCenter = self.testView.center;
    
    self.testView.frame = CGRectMake(self.testView.frame.origin.x, self.testView.frame.origin.y, newWidth, self.testView.frame.size.height);
    self.testView.center = currentCenter;
}

- (void)handleDoubleTapGesture: (UITapGestureRecognizer *)doubleTapGestureRecognizer
{
    CGSize newSize = CGSizeMake(100.0, 100.0);
    if (self.testView.frame.size.width == 100.0)
    {
        newSize.width = 200.0;
        newSize.height = 200.0;
    }
    
    CGPoint currentCenter = self.testView.center;
    
    self.testView.frame = CGRectMake(self.testView.frame.origin.x, self.testView.frame.origin.y, newSize.width, newSize.height);
    self.testView.center = currentCenter;
}

- (void)handleLongPressGestureWithRecognizer: (UILongPressGestureRecognizer *)longPressGesture
{
    longPressGesture.minimumPressDuration = 1.0;
    longPressGesture.numberOfTouchesRequired = 1;
    longPressGesture.allowableMovement = 0.0;
    
    NSLog(@"Long Press Handled");
    
    if (self.testView.backgroundColor != [UIColor greenColor])
    {
        self.testView.backgroundColor = [UIColor greenColor];
    }
}

@end
