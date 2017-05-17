//
//  JSObject.h
//  JSInteractive
//
//  Created by jack on 2017/3/29.
//  Copyright © 2017年 jieWang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol JSObjectProtocol <JSExport>

-(void)JSObjecNOParameter;
-(void)JSObjecOneParameter:(NSDictionary *)dicton;
//-(void)JSObjecOneParameter:(NSString *)message;
-(void)JSObjecTowParameter:(NSString *)firstMessage SecondParameter:(NSString *)secondMessage;

@end

@interface JSObject : NSObject<JSObjectProtocol>

@end
