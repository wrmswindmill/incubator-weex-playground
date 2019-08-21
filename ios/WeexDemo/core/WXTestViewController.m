//
//  WXAnimationTestViewController.m
//  WeexDemo
//
//  Created by Renmin on 2019/8/20.
//  Copyright © 2019 taobao. All rights reserved.
//

#import "WXTestViewController.h"
#import <WeexSDK/WeexSDK.h>

@interface WXTestViewController ()

@end

@implementation WXTestViewController
//@synthesize

@synthesize weexInstance;

WX_EXPORT_METHOD(@selector(detectionTask:) )

- (void)detectionTask:(NSString*)symbol{
    if([symbol isEqual: @"AnimationTest"]){
        [self animationTest];
    }
}

- (void) animationTest{
    NSString* result = @"fail";
    UIView *view = weexInstance.viewController.view.subviews[0].subviews[0].subviews[0];
    if( view.frame.origin.x == 125 && view.frame.origin.y == 50){
        result = @"success";
    }
    [self sendResult:result];
}

- (void)sendResult:(NSString*)result{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:result message:@"" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:cancel];
    [alert addAction:ok];
    [weexInstance.viewController presentViewController:alert animated:YES completion:nil];
}
@end
