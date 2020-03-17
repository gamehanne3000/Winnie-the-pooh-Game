//
//  Page two.m
//  labb 1
//
//  Created by Johannes Ryberg on 2020-01-14.
//  Copyright © 2020 Johannes Ryberg. All rights reserved.
//

#import "Page two.h"

@interface Page_two ()

@end


@implementation Page_two


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.txtOutput setHidden:YES];
}


- (IBAction)btnGuess:(id)sender {
    
    // Converts NSString to an int
       NSString *str = [self.txtOutput text];
       int GuessedNumber = [str intValue];
       
       NSLog(@"nuvarande nummer är %d", self.randomNumber);
       if (GuessedNumber == self.randomNumber){
            self.txtState.text = @"gratulerar du VANN";
       } else
           self.txtState.text = @"Tyvärr du gissade fel";
}

- (IBAction)currentSegment:(id)sender {
    
    switch (self.segOut.selectedSegmentIndex) {
        case 0:
            self.randomNumber = arc4random_uniform(10);
            [self.txtOutput setHidden:NO];
            [self.warningSign setHidden:YES];
            NSLog(@"lätt = %d", self.randomNumber);
            break;
        case 1:
            self.randomNumber = arc4random_uniform(50);
            [self.txtOutput setHidden:NO];
            [self.warningSign setHidden:YES];
            NSLog(@"medium = %d", self.randomNumber);
            break;
        case 2:
            self.randomNumber = arc4random_uniform(100);
            [self.txtOutput setHidden:NO];
            [self.warningSign setHidden:YES];
            NSLog(@"svår = %d", self.randomNumber);
            break;

        default:
            break;
    }
     
}


@end
