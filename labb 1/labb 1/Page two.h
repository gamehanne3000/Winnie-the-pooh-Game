//
//  Page two.h
//  labb 1
//
//  Created by Johannes Ryberg on 2020-01-14.
//  Copyright © 2020 Johannes Ryberg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Page_two : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *warningSign;
@property (weak, nonatomic) IBOutlet UILabel *txtState;
@property (nonatomic) int randomNumber;
@property (weak, nonatomic) IBOutlet UITextField *txtOutput;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segOut;


- (IBAction)btnGuess:(id)sender;
- (IBAction)currentSegment:(id)sender;



@end

NS_ASSUME_NONNULL_END
