//
//  ViewController.m
//  TRProject
//
//  Created by yingxin on 16/7/10.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "ViewController.h"
#import "NetManager.h"
#import "TopTRTableViewCell.h"
#import "NomalTableViewCell.h"
#import "SubViewController.h"

@interface ViewController ()
@property(nonatomic,copy)NSMutableArray<QC_R_Newslist *>*allnewslist;
@property(nonatomic,copy)NSMutableArray<QC_R_Focusimg *>*allfocusimg;
@property(nonatomic)NSInteger p;
@property(nonatomic)NSString* l;
@end

@implementation ViewController

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(self.nt==0){
        
        if (indexPath.row==0) {
            TopTRTableViewCell*cell= [tableView cellForRowAtIndexPath:indexPath];
            cell.myscrollview.supview=[tableView cellForRowAtIndexPath:indexPath].contentView;
            NSInteger n=cell.pagec.currentPage;
            SubViewController*svc=[[SubViewController alloc]initWithpath:[NSString stringWithFormat:@"%ld",self.allfocusimg[n].idd].SubPath];
            svc.view.backgroundColor=[UIColor whiteColor];
            [self.navigationController pushViewController:svc animated:YES];
            
        }else{
    SubViewController*svc=[[SubViewController alloc]initWithpath:[NSString stringWithFormat:@"%ld",self.allnewslist[indexPath.row -1].idd].SubPath];
    svc.view.backgroundColor=[UIColor whiteColor];
    [self.navigationController pushViewController:svc animated:YES];
        }
    }
        else{
        SubViewController*svc=[[SubViewController alloc]initWithpath:[NSString stringWithFormat:@"%ld",self.allnewslist[indexPath.row ].idd].SubPath];
        svc.view.backgroundColor=[UIColor whiteColor];
        [self.navigationController pushViewController:svc animated:YES];
    }
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.p=1;
    self.l=@"0";
    self.tableView.mj_header=[MJRefreshNormalHeader headerWithRefreshingBlock:^{
        self.l= @"0";
        self.p= 1;
        [NetManager getP:self.p WithL:self.l Withnt:self.nt completionH:^(QCAllModel_dic *qc, NSError *error) {
            if (!error) {
                [self.tableView.mj_header endRefreshing];
                [self.allfocusimg removeAllObjects];
                [self.allnewslist removeAllObjects];
                [self.allnewslist addObjectsFromArray: qc.result.newslist];
                [self.allfocusimg addObjectsFromArray: qc.result.focusimg];
                [self.tableView reloadData];
            }
        }];
    }];
    
    
    
    
    [self.tableView.mj_header beginRefreshing];
    [self.tableView registerClass:[TopTRTableViewCell class] forCellReuseIdentifier:@"topcell"];
    [self.tableView registerClass:[NomalTableViewCell class] forCellReuseIdentifier:@"nomalcell"];
    
    self.tableView.mj_footer=[MJRefreshBackFooter footerWithRefreshingBlock:^{
        self.l=[self.allnewslist lastObject].lasttime;
        self.p++;
        [NetManager getP:self.p WithL:self.l Withnt:self.nt completionH:^(QCAllModel_dic *qc, NSError *error) {
            if (!error) {
                [self.tableView.mj_footer endRefreshing];
                if(!error){
                    [self.allnewslist addObjectsFromArray: qc.result.newslist];
                    [self.allfocusimg addObjectsFromArray: qc.result.focusimg];
                    [self.tableView reloadData];
                }
            };
    }];
    }];

    
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.nt==0) {
        if (indexPath.row==0) {
            return 200;
        }else{
            return 90;
        }
    }else{
        return 90;
    }
    
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (self.nt==0) {
        return self.allnewslist.count+1;
    }else{
    return self.allnewslist.count;
}
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.nt==0) {
    if (indexPath.row==0) {
        TopTRTableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:@"topcell" forIndexPath:indexPath];
        NSMutableArray*tmarr=[NSMutableArray new];
        
        if (self.allfocusimg.count>0) {
            for (int j=0; j<self.allfocusimg.count; j++) {
                UIImageView*v=[UIImageView new];
                [v setImageURL:self.allfocusimg[j].imgurl.URL];
                [tmarr addObject:v];
            }
            cell.mytopimageview=tmarr;
            [cell myscrollview];
            NSLog(@"%@",tmarr);
        }
        
        return cell;
    }else{
        NomalTableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:@"nomalcell" forIndexPath:indexPath];
        cell.mytitleLabel.text=self.allnewslist[indexPath.row-1].title;
        [cell.myimageview setImageURL:self.allnewslist[indexPath.row-1].smallpic.URL];
        cell.myDateLabel.text=self.allnewslist[indexPath.row-1].time;
        cell.myWatchLabel.text= [NSString stringWithFormat:@"跟帖:%ld",self.allnewslist[indexPath.row -1].replycount];
        return cell;
    }
    }
    else{
        NomalTableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:@"nomalcell" forIndexPath:indexPath];
        cell.mytitleLabel.text=self.allnewslist[indexPath.row].title;
        [cell.myimageview setImageURL:self.allnewslist[indexPath.row].smallpic.URL];
        cell.myDateLabel.text=self.allnewslist[indexPath.row].time;
        cell.myWatchLabel.text= [NSString stringWithFormat:@"跟帖:%ld",self.allnewslist[indexPath.row].replycount];
        return cell;
    }
    
    
}

- (NSMutableArray<QC_R_Newslist *> *)allnewslist {
	if(_allnewslist == nil) {
		_allnewslist = [[NSMutableArray<QC_R_Newslist *> alloc] init];
	}
	return _allnewslist;
}

- (NSMutableArray<QC_R_Focusimg *> *)allfocusimg {
	if(_allfocusimg == nil) {
		_allfocusimg = [[NSMutableArray<QC_R_Focusimg *> alloc] init];
	}
	return _allfocusimg;
}
@end
