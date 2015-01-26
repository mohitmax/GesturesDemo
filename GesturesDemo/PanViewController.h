//
//  PanViewController.h
//  GesturesDemo
//
//  Created by Mohit Sadhu on 1/22/15.
//  Copyright (c) 2015 ms. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PanViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *testView;
@property (strong, nonatomic) IBOutlet UILabel *horizontalVelocityLabel;
@property (strong, nonatomic) IBOutlet UILabel *verticalVelocityLabel;

@end
