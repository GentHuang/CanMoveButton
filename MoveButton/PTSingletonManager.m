//
//  PTSingletonManager.m
//  iPos
//
//  Created by apple on 16/02/22.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "PTSingletonManager.h"

@implementation PTSingletonManager

+(PTSingletonManager *)shareInstance
{

    static PTSingletonManager * singletonManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singletonManager = [[PTSingletonManager  alloc]init];
    });
    return singletonManager;
}

@end
