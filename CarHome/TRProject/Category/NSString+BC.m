//
//  NSString+BC.m
//  TRProject
//
//  Created by tarena on 2017/1/11.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import "NSString+BC.h"

@implementation NSString (BC)
-(NSURL *)URL{
    return [NSURL URLWithString:self];
}
-(NSString*)Date{
//    [self substringToIndex:4];
//    [self substringWithRange:NSMakeRange(5, 2)];
//    [self substringWithRange:NSMakeRange(7, 2)];
    
    return [NSString stringWithFormat:@"%@-%@-%@",[self substringToIndex:4],[self substringWithRange:NSMakeRange(5, 2)],[self substringWithRange:NSMakeRange(7, 2)]];
}
-(NSString*)SubPath{
    return [NSString stringWithFormat:@"http://cont.app.autohome.com.cn/autov5.0.0/content/news/newscontent-n%@-t0-rct1.json",self];
}
@end
