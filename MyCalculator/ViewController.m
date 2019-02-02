//
//  ViewController.m
//  MyCalculator
//
//  Created by Stephen Cao on 2/2/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
 
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)caculate{
    NSLog(@"I press the button");
    NSString * text1 = self.textField1.text;
    NSString * text2 = self.textField2.text;
    int num1 = [text1 intValue];
    int num2 = [text2 intValue];
    NSLog(@"num1:%d,num2:%d",num1,num2);
    int res = num1 - num2;
    if(res >= 0){
        self.label.text = [NSString stringWithFormat:@"%d",res];
    }else{
//        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Warnings" message:@"Please enter correct values" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
//        [alert show];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Warnings" message:@"Please type in correct numbers" preferredStyle: UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil]];
        [self presentViewController:alert animated:NO completion:nil];
        self.label.text = [NSString stringWithFormat:@"%d",0];
    }
    [self.view endEditing:YES];
}

@end
