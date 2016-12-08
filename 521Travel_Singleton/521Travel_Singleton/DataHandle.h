//
//  DataHandle.h
//  DanLiHandle
//
//  Created by lanou3g on 15-3-19.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataHandle : NSObject
@property (copy, nonatomic) NSString *value;  // 要传的数据

+ (DataHandle *)shareDataHandle;
@end
