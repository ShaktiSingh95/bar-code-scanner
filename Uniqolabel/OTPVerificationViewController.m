//
//  OTPVerificationViewController.m
//  Uniqolabel
//
//  Created by Shakti Pratap Singh on 29/08/17.
//  Copyright © 2017 Shakti Pratap Singh. All rights reserved.
//

#import "OTPVerificationViewController.h"

@interface OTPVerificationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *otpTextField;

@end

@implementation OTPVerificationViewController
- (IBAction)verifyAction:(UIButton *)sender {
    if([_otpTextField.text  isEqual: @"0000"]){
        NSString * storyboardName = @"Main";
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
        UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"tab_bar_vc"];
        [self presentViewController:vc animated:YES completion:nil];
    }
}
- (IBAction)resend:(UIButton *)sender {
}
- (IBAction)cancel:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.clearColor;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
