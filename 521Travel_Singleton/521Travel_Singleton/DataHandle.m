//
//  DataHandle.m
//  DanLiHandle
//
//  Created by lanou3g on 15-3-19.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "DataHandle.h"

@implementation DataHandle

static DataHandle *handle = nil;

+ (DataHandle *)shareDataHandle
{
    @synchronized(self)
    {
        if (handle == nil) {
            handle = [[DataHandle alloc]init];
        }
    }
    return handle;
}

@end
