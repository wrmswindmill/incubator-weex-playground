//
//  TestTask.m
//  WeexDemo
//
//  Created by Renmin on 2019/8/20.
//  Copyright © 2019 taobao. All rights reserved.
//

#import "TestTask.h"

@implementation TestTask

-(instancetype)init{
    if(self=[super init]){
    }
    return self;
}

-(instancetype)initWithName:(NSString *)name url:(NSString *)newUrl{
    if(self=[super init]){
        self.name = name;
        self.url = newUrl;
    }
    return self;
}
@end
