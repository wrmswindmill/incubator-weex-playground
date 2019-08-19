//
//  TestTask.h
//  WeexDemo
//
//  Created by Renmin on 2019/8/20.
//  Copyright © 2019 taobao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestTask : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *url;

-(instancetype)initWithName:(NSString *)name url:(NSString *)newUrl;
@end

NS_ASSUME_NONNULL_END
