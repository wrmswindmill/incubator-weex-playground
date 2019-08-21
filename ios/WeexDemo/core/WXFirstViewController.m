//
//  WXFirstViewController.m
//  WeexDemo
//
//  Created by Renmin on 2019/8/19.
//  Copyright © 2019 taobao. All rights reserved.
//

#import "WXFirstViewController.h"
#import <WeexSDK/WeexSDK.h>
#import "WXDemoViewController.h"
#import "AppDelegate.h"
#import "WXTestViewController.h"
#import "TestTask.h"

@interface WXFirstViewController () <UITableViewDelegate,UITableViewDataSource>
@property (strong,nonatomic) UITableView *table;
@property (strong,nonatomic) NSArray *data;
@end

@implementation WXFirstViewController

- (void)loadData {
    self.data = @[
      [[TestTask alloc] initWithName:@"AnimationTest" url:@"http://dotwe.org/vue/8d28476fdcc7dd8f0efa674892e83829"]
    ];
}

#pragma mark - lifeCircle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    // prepare tableview data
    self.table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.table.delegate = self;
    self.table.dataSource = self;
    [self loadData];
    [self.view addSubview:self.table];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:false];
    [self.navigationController setNavigationBarHidden:NO];
}

- (void) viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [self.table dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    TestTask* task = [self.data objectAtIndex:indexPath.row];
    cell.textLabel.text =  task.name;
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;{
    TestTask* task = [self.data objectAtIndex:indexPath.row];
    WXDemoViewController * controller = [[WXDemoViewController alloc] initWithUrlString:task.url]; //symbol:task.name
    [[self navigationController] pushViewController:controller animated:YES];
    //[self jsReplace:url];
}
//
//#pragma mark - Replace JS
//- (void)jsReplace:(NSURL *)url{
//    if ([[url host] isEqualToString:@"weex-remote-debugger"]){
//        NSString* path = [url path];
//        if ([path isEqualToString:@"/dynamic/replace/bundle"]){
//            for (NSString * param in [[url query] componentsSeparatedByString:@"&"]) {
//                NSArray* elts = [param componentsSeparatedByString:@"="];
//                if ([elts count] < 2) {
//                    continue;
//                }
//                if ([[elts firstObject] isEqualToString:@"bundle"]){
//                    [WXDebugTool setReplacedBundleJS:[NSURL URLWithString:[elts lastObject]]];
//                }
//            }
//        }
//
//        if ([path isEqualToString:@"/dynamic/replace/framework"]){
//            for (NSString * param in [[url query] componentsSeparatedByString:@"&"]) {
//                NSArray* elts = [param componentsSeparatedByString:@"="];
//                if ([elts count] < 2) {
//                    continue;
//                }
//                if ([[elts firstObject] isEqualToString:@"framework"]){
//                    [WXDebugTool setReplacedJSFramework:[NSURL URLWithString:[elts lastObject]]];
//                }
//            }
//        }
//    }
//}
@end
