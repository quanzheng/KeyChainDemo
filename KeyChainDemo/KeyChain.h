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

// save username and password to keychain
+ (void)save:(NSString *)service data:(id)data;

// take out username and passwore from keychain
+ (id)load:(NSString *)service;

// delete username and password from keychain
+ (void)delete:(NSString *)service;

@end
