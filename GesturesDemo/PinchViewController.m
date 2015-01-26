//
//  PinchViewController.m
//  GesturesDemo
//
//  Created by Mohit Sadhu on 1/22/15.
//  Copyright (c) 2015 ms. All rights reserved.
//

#import "PinchViewController.h"

@interface PinchViewController ()

@end

@implementation PinchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIPinchGestureRecognizer *pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinchWithGestureRecognizer:)];
    
    [self.testView addGestureRecognizer:pinchGestureRecognizer];
}

- (void)handlePinchWithGestureRecognizer: (UIPinchGestureRecognizer *)pinchGestureRecognizer
{
//    self.testView.transform = CGAffineTransformScale(self.testView.transform, pinchGestureRecognizer.scale, pinchGestureRecognizer.scale);
    
    pinchGestureRecognizer.view.transform = CGAffineTransformScale(pinchGestureRecognizer.view.transform, pinchGestureRecognizer.scale, pinchGestureRecognizer.scale);
    
    pinchGestureRecognizer.scale = 1.0;
}

@end
