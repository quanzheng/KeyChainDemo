//
//  ViewController.m
//  KeyChainDemo
//
//  Created by 全政 on 15/6/25.
//  Copyright (c) 2015年 全政. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString * const KEY_USERNAME_PASSWORD = @"com.company.app.usernamepassword";
    NSString * const KEY_USERNAME = @"com.company.app.username";
    NSString * const KEY_PASSWORD = @"com.company.app.password";
    
    NSMutableDictionary *userNamePasswordKVPairs = [NSMutableDictionary dictionary];
    [userNamePasswordKVPairs setObject:@"userName" forKey:KEY_USERNAME];
    [userNamePasswordKVPairs setObject:@"password" forKey:KEY_PASSWORD];
    // 将用户名和密码写入keychain
    [KeyChain save:KEY_USERNAME_PASSWORD data:userNamePasswordKVPairs];
    
    // 从keychain中读取用户名和密码
    NSMutableDictionary *readUsernamePassword = (NSMutableDictionary *)[KeyChain load:KEY_USERNAME_PASSWORD];
    NSString *userName = [readUsernamePassword objectForKey:KEY_USERNAME];
    NSString *password = [readUsernamePassword objectForKey:KEY_PASSWORD];
    NSLog(@"username = %@", userName);
    NSLog(@"password = %@", password);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
