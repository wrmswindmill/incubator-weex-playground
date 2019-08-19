//
//  WXAnimationTestViewController.m
//  WeexDemo
//
//  Created by Renmin on 2019/8/20.
//  Copyright © 2019 taobao. All rights reserved.
//

#import "WXTestViewController.h"

@interface WXTestViewController ()

@end

@implementation WXTestViewController

- (void)detectionTask{
    if([self.symbol isEqual: @"AnimationTest"]){
        [self animationTest];
    }
}

- (void) animationTest{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        // compare result
        NSString* result = @"fail";
        UIView *view = self.view.subviews[0].subviews[0].subviews[0];
        if( view.frame.origin.x == 125 && view.frame.origin.y == 50){
            result = @"success";
        }
        [self sendResult:result];
    });
}
@end
