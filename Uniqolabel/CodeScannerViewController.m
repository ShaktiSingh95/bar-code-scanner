//
//  CodeScannerViewController.m
//  Uniqolabel
//
//  Created by Shakti Pratap Singh on 29/08/17.
//  Copyright © 2017 Shakti Pratap Singh. All rights reserved.
//

#import "CodeScannerViewController.h"
 #import "MTBBarcodeScanner.h"
#import "ResultViewController.h"
@interface CodeScannerViewController ()
@property (weak, nonatomic) IBOutlet UIView *previewView;
@property (strong,nonatomic) MTBBarcodeScanner *scanner;
@end

@implementation CodeScannerViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    _scanner = [[MTBBarcodeScanner alloc] initWithPreviewView:self.previewView];
    // Do any additional setup after loading the view.
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [MTBBarcodeScanner requestCameraPermissionWithSuccess:^(BOOL success) {
        if (success) {
            
            NSError *error = nil;
            [self.scanner startScanningWithResultBlock:^(NSArray *codes) {
                AVMetadataMachineReadableCodeObject *code = [codes firstObject];
                NSLog(@"Found code: %@", code.stringValue);
                
                [self.scanner stopScanning];
                NSString * storyboardName = @"Main";
                UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
                
                ResultViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"result_vc"];
                vc.testString=code.stringValue;
                [self presentViewController:vc animated:true completion:nil];
            } error:&error];
            
            
        } else {
            // The user denied access to the camera
        }
    }];
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
