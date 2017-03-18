//
//  BaseManager.h
//  TRProject
//
//  Created by tarena on 2017/1/11.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseManager : NSObject
+(id)getPath:(NSString*)path completionHandle:(void(^)(id obj , NSError*error))completionHandle;

@end
