//
//  JSObject.m
//  JSInteractive
//
//  Created by jack on 2017/3/29.
//  Copyright © 2017年 jieWang. All rights reserved.
//

#import "JSObject.h"

@implementation JSObject

#pragma mark - JSObjectProtocol

-(void)JSObjecNOParameter {
    NSLog(@"JSObjecNOParameter");
}

-(void)JSObjecOneParameter:(NSDictionary *)dicton {
    [dicton enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, NSString *  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"JSObjecOneParameter:  key-- %@  value-- %@", key, obj);
    }];
}

//-(void)JSObjecOneParameter:(NSString *)message {
//    NSLog(@"JSObjecOneParameter: %@", message);
//}

-(void)JSObjecTowParameter:(NSString *)firstMessage SecondParameter:(NSString *)secondMessage {
    NSLog(@"JSObjecTowParameter: %@ SecondParameter: %@", firstMessage, secondMessage);
}


@end
