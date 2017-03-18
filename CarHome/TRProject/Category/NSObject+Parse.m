//
//  NSObject+Parse.m
//  TRProject
//
//  Created by tarena on 2017/1/11.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import "NSObject+Parse.h"
#import <objc/runtime.h>
@implementation NSObject (Parse)
+(id)parse:(id)JSON{
    if ([JSON isKindOfClass:[NSArray class]]) {
        return [self parseArr:JSON];
    }
    if ([JSON isKindOfClass:[NSDictionary class]]) {
        return [self parseDic:JSON];
    }return JSON;
}
+(id)parseArr:(NSArray*)arr{
    NSMutableArray*tmparr=[NSMutableArray new];
    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [tmparr addObject:[self parse:obj]];
    }];
    return tmparr;
}
+(id)parseDic:(NSDictionary*)dic{
    id model=[self new];
    unsigned int outcount;
    objc_property_t* pList= class_copyPropertyList([self class],&outcount);
    for (int i=0 ; i < outcount; i++) {
        const char *pName= property_getName(pList[i]);
        NSString *proName=[NSString stringWithUTF8String:pName];
        NSString *key=proName;
        if ([self ThekeyChangeName][proName]) {
            key=[self ThekeyChangeName][proName];
        }
        id obj=dic[key];
        
        if ([self dicInArrOrDic]) {
            Class c= NSClassFromString([self dicInArrOrDic][proName]);
            obj=[c parse:obj];
        }
        [model setValue:obj forKey:proName];
    }
    free(pList);
    return model;
}
+(NSDictionary*)dicInArrOrDic{
    return nil;
}
+(NSDictionary*)ThekeyChangeName{
    return nil;
}
-(void)setNilValueForKey:(NSString *)key{}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{}

@end
