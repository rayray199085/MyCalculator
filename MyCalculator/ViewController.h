//
//  ViewController.h
//  MyCalculator
//
//  Created by Stephen Cao on 2/2/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic,weak)IBOutlet UITextField *textField1;
@property(nonatomic,weak)IBOutlet UITextField *textField2;
@property(nonatomic,weak)IBOutlet UILabel *label;
-(IBAction)caculate;
@end

