//
//  KeyChain.h
//  KeyChainDemo
//
//  Created by 全政 on 15/6/25.
//  Copyright (c) 2015年 全政. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Security/Security.h>
@interface KeyChain : NSObject
+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)delete:(NSString *)service;

@end
