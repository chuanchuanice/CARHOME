//
//  BaseManager.m
//  TRProject
//
//  Created by tarena on 2017/1/11.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import "BaseManager.h"

@implementation BaseManager
+(id)getPath:(NSString *)path completionHandle:(void (^)(id, NSError *))completionHandle{
    NSOperationQueue *q=[NSOperationQueue currentQueue];
    NSURLSessionDataTask*task=[[NSURLSession sharedSession]dataTaskWithURL:path.URL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
       [q addOperationWithBlock:^{
           if(error){
               !completionHandle ?: completionHandle(nil,error);
           }else{
               NSError*err=nil;
               id obj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves|NSJSONReadingAllowFragments|NSJSONReadingMutableContainers error:&err];
               if (err) {
                    !completionHandle ?: completionHandle(nil,err);
               }else{
                   !completionHandle ?: completionHandle(obj,nil);
               }
           }
       }];
    }];
    [task resume];
    return task;
}
@end
