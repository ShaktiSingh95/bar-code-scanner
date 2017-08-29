//
//  LoginViewController.m
//  Uniqolabel
//
//  Created by Shakti Pratap Singh on 28/08/17.
//  Copyright © 2017 Shakti Pratap Singh. All rights reserved.
//

#import "LoginViewController.h"
#import "ResultViewController.h"
@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password;

@end

@implementation LoginViewController
- (IBAction)loginAction:(UIButton *)sender {
    if(![_userName.text  isEqual: @""] && ![_userName.text  isEqual: @""]){
        NSString * storyboardName = @"Main";
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
        UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"otp_vc"];
        vc.modalPresentationStyle=UIModalPresentationOverCurrentContext;
        [self presentViewController:vc animated:YES completion:nil];
    }
}
- (IBAction)forgotPasswordAction:(UIButton *)sender {
}
- (IBAction)registerAction:(UIButton *)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
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
