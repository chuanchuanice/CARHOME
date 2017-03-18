//
//  NSObject+Parse.h
//  TRProject
//
//  Created by tarena on 2017/1/11.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYKit.h>
@interface NSObject (Parse)
+(id)parse:(id)JSON;
+(NSDictionary*)dicInArrOrDic;
+(NSDictionary*)ThekeyChangeName;

@end
