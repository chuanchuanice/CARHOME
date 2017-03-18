//
//  QCAllModel_dic.h
//  TRProject
//
//  Created by tarena on 2017/1/11.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QCResultModel_dic,QC_Result_HeadModel_dic,QC_R_Topnewsinfo_dic,QC_R_Newslist,QC_R_Focusimg;
@interface QCAllModel_dic : NSObject

@property (nonatomic, strong) QCResultModel_dic *result;

@property (nonatomic, assign) NSInteger returncode;

@property (nonatomic, copy) NSString *message;

@end
@interface QCResultModel_dic : NSObject

@property (nonatomic, assign) BOOL isloadmore;

@property (nonatomic, assign) NSInteger rowcount;

@property (nonatomic, strong) QC_Result_HeadModel_dic *headlineinfo;

@property (nonatomic, strong) NSArray<QC_R_Focusimg *> *focusimg;

@property (nonatomic, strong) NSArray<QC_R_Newslist *> *newslist;

@property (nonatomic, strong) QC_R_Topnewsinfo_dic *topnewsinfo;

@end

@interface QC_Result_HeadModel_dic : NSObject
//id-->idd
@property (nonatomic, assign) NSInteger idd;

@property (nonatomic, copy) NSString *smallpic;

@property (nonatomic, assign) NSInteger replycount;

@property (nonatomic, copy) NSString *lasttime;

@property (nonatomic, copy) NSString *time;

@property (nonatomic, assign) NSInteger mediatype;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *type;

@property (nonatomic, copy) NSString *updatetime;

@property (nonatomic, assign) NSInteger jumppage;

@property (nonatomic, copy) NSString *indexdetail;

@property (nonatomic, assign) NSInteger pagecount;

@property (nonatomic, strong) NSArray *coverimages;

@end

@interface QC_R_Topnewsinfo_dic : NSObject

@end

@interface QC_R_Newslist : NSObject
//id-->idd
@property (nonatomic, assign) NSInteger idd;

@property (nonatomic, strong) NSArray *coverimages;

@property (nonatomic, copy) NSString *smallpic;

@property (nonatomic, assign) NSInteger replycount;

@property (nonatomic, copy) NSString *lasttime;

@property (nonatomic, copy) NSString *time;

@property (nonatomic, assign) NSInteger mediatype;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *type;

@property (nonatomic, copy) NSString *updatetime;

@property (nonatomic, assign) NSInteger jumppage;

@property (nonatomic, copy) NSString *indexdetail;

@property (nonatomic, assign) NSInteger pagecount;

@property (nonatomic, assign) NSInteger newstype;

@end

@interface QC_R_Focusimg : NSObject

@property (nonatomic, copy) NSString *imgurl;

@property (nonatomic, copy) NSString *jumpurl;

@property (nonatomic, copy) NSString *updatetime;
//id->idd
@property (nonatomic, assign) NSInteger idd;

@property (nonatomic, assign) NSInteger replycount;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) NSInteger pageindex;

@property (nonatomic, assign) NSInteger JumpType;

@property (nonatomic, assign) NSInteger mediatype;

@property (nonatomic, copy) NSString *type;

@property (nonatomic, assign) NSInteger fromtype;

@end

