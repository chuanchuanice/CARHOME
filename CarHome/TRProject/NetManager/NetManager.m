//
//  NetManager.m
//  TRProject
//
//  Created by tarena on 2017/1/11.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import "NetManager.h"

@implementation NetManager
+(id)getP:(NSInteger)p WithL:(NSString*)l Withnt:(NSInteger)nt completionH:(void(^)(QCAllModel_dic*qc,NSError*error))completionH{
    NSString *path=[NSString stringWithFormat:@"http://app.api.autohome.com.cn/autov5.0.0/news/newslist-pm1-c0-nt%ld-p%ld-s30-l%@.json",nt,p,l];
    return [self getPath:path completionHandle:^(id obj, NSError *error) {
        !completionH ?: completionH([QCAllModel_dic parse:obj],error);
    }];
}
@end
