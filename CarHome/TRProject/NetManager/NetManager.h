//
//  NetManager.h
//  TRProject
//
//  Created by tarena on 2017/1/11.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseManager.h"
#import "QCAllModel_dic.h"
@interface NetManager : BaseManager
+(id)getP:(NSInteger)p WithL:(NSString*)l Withnt:(NSInteger)nt completionH:(void(^)(QCAllModel_dic*qc,NSError*error))completionH;

@end
