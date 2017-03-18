//
//  QCAllModel_dic.m
//  TRProject
//
//  Created by tarena on 2017/1/11.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import "QCAllModel_dic.h"

@implementation QCAllModel_dic
//@property (nonatomic, strong) QCResultModel_dic *result;
+(NSDictionary *)dicInArrOrDic{
    return @{@"result":@"QCResultModel_dic"};
}
@end
@implementation QCResultModel_dic
//@property (nonatomic, strong) QC_Result_HeadModel_dic *headlineinfo;
//
//@property (nonatomic, strong) NSArray<QC_R_Focusimg *> *focusimg;
//
//@property (nonatomic, strong) NSArray<QC_R_Newslist *> *newslist;
//
//@property (nonatomic, strong) QC_R_Topnewsinfo_dic *topnewsinfo;
+(NSDictionary *)dicInArrOrDic{
    return @{@"headlineinfo":@"QC_Result_HeadModel_dic",@"focusimg":@"QC_R_Focusimg",@"newslist":@"QC_R_Newslist",@"topnewsinfo":@"QC_R_Topnewsinfo_dic"};
}

@end


@implementation QC_Result_HeadModel_dic
+(NSDictionary *)ThekeyChangeName{
    return @{@"idd":@"id"};
}
@end


@implementation QC_R_Topnewsinfo_dic

@end


@implementation QC_R_Newslist
+(NSDictionary *)ThekeyChangeName{
    return @{@"idd":@"id"};
}
@end


@implementation QC_R_Focusimg
+(NSDictionary *)ThekeyChangeName{
    return @{@"idd":@"id"};
}
@end


