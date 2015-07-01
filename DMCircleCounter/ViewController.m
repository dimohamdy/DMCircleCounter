//
//  ViewController.m
//  DMCircleCounter
//
//  Created by binaryboy on 6/29/15.
//  Copyright (c) 2015 AhmedHamdy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    float count;
    int counterForLabel;
}
@synthesize countOfthikr;
@synthesize circleCounter;
@synthesize progresCount;
@synthesize plusOneButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.circleCounter.delegate = self;
    count = 0.0;
    counterForLabel = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)countPlusOne:(id)sender {
    
    NSString *countString = [NSString stringWithFormat:@"%d",++counterForLabel];
    
    [plusOneButton setTitle: countString forState: UIControlStateNormal];
    [plusOneButton setTitle: countString forState: UIControlStateApplication];
    [plusOneButton setTitle: countString forState: UIControlStateHighlighted];
    [plusOneButton setTitle: countString forState: UIControlStateReserved];
    [plusOneButton setTitle: countString forState: UIControlStateSelected];
    [plusOneButton setTitle: countString forState: UIControlStateDisabled];
    
    float value = (1.0 / [countOfthikr.text intValue]);
    if (count == 1.0) {
        [progresCount resetView];
        count = 0.0;
        counterForLabel = 0;
        NSString *countString = [NSString stringWithFormat:@"%d",++counterForLabel];
        
        [plusOneButton setTitle: countString forState: UIControlStateNormal];
        [plusOneButton setTitle: countString forState: UIControlStateApplication];
        [plusOneButton setTitle: countString forState: UIControlStateHighlighted];
        [plusOneButton setTitle: countString forState: UIControlStateReserved];
        [plusOneButton setTitle: countString forState: UIControlStateSelected];
        [plusOneButton setTitle: countString forState: UIControlStateDisabled];
        
    }
    count+= value;
    
    [progresCount countOfSegment:count];
    if (count==0.0) {
    }
}


- (IBAction)applyCont:(id)sender {
    count = 0.0;
    [progresCount resetView];
    [circleCounter resetView];
    [circleCounter countOfSegment:[countOfthikr.text intValue]];
    //[progresCount countOfSegment:[countOfthikr.text intValue]];
}
@end
