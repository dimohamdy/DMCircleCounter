//
//  ViewController.h
//  DMCircleCounter
//
//  Created by binaryboy on 6/29/15.
//  Copyright (c) 2015 AhmedHamdy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DMCircleCounter.h"
#import "DMCircleCounterWithOutSegment.h"

@interface ViewController : UIViewController <DMCircleCounterDelegate>

@property (strong, nonatomic) IBOutlet DMCircleCounter *circleCounter;

@property (strong, nonatomic) IBOutlet UITextField *countOfthikr;
@property (strong, nonatomic) IBOutlet DMCircleCounterWithOutSegment *progresCount;
@property (strong, nonatomic) IBOutlet UIButton *plusOneButton;
@end

