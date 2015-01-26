//
//  RotationViewController.m
//  GesturesDemo
//
//  Created by Mohit Sadhu on 1/22/15.
//  Copyright (c) 2015 ms. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()

@end

@implementation RotationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIRotationGestureRecognizer *rotationGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotationGestureWithRecognizer:)];
    
    [self.testView addGestureRecognizer:rotationGesture];
}

- (void) handleRotationGestureWithRecognizer: (UIRotationGestureRecognizer *)rotationGesture
{
    self.testView.transform = CGAffineTransformRotate(self.testView.transform, rotationGesture.rotation);
    rotationGesture.rotation = 0.0;
}

@end
