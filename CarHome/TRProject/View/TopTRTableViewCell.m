//
//  TopTRTableViewCell.m
//  TRProject
//
//  Created by tarena on 2017/1/11.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import "TopTRTableViewCell.h"

@implementation TopTRTableViewCell
//@property(nonatomic)UIScrollView*myscrollview;
//@property(nonatomic,copy)NSArray<UIImageView*>*mytopimageview;
//@property(nonatomic)UILabel*mylabel;



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
//-(NSArray<UIImageView *> *)mytopimageview{
//    if (_mytopimageview==nil) {
//        _mytopimageview = [NSArray new];
//    }return _mytopimageview;
//}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSInteger currentPage = round(scrollView.contentOffset.x / scrollView.frame.size.width);
    self.pagec.currentPage = currentPage;
}
-(UIPageControl *)pagec{
    if (!_pagec) {
        _pagec = [[UIPageControl alloc]init];
        _pagec.frame = CGRectMake(0, self.contentView.frame.size.height - 20 - 20, self.contentView.frame.size.width, 20);
        //设置圆点个数
        _pagec.numberOfPages = self.mytopimageview.count;
        //当前选中的是 哪个点  默认是0
        _pagec.currentPage = 0;
        //设置未选中圆点 颜色
        _pagec.pageIndicatorTintColor = [UIColor redColor];
        //设置选中点的颜色
        _pagec.currentPageIndicatorTintColor = [UIColor greenColor];
        //关闭用户交互
        _pagec.userInteractionEnabled = NO;
        [self.contentView addSubview:_pagec];
    }return _pagec;
}



- (myscrollView *)myscrollview {
	if(_myscrollview == nil) {
		_myscrollview = [[myscrollView alloc] init];
        
        [self.contentView addSubview:_myscrollview];
        
        _myscrollview.contentSize=CGSizeMake(self.contentView.frame.size.width*self.mytopimageview.count, self.contentView.frame.size.height);
        _myscrollview.backgroundColor=[UIColor redColor];
        _myscrollview.frame=self.contentView.frame;
        
        
        NSLog(@"%@",self.mytopimageview);
        for (int h=0; h<self.mytopimageview.count; h++) {
            UIImageView*imageview=[UIImageView new];
            imageview=self.mytopimageview[h];
            imageview.frame=CGRectMake(self.contentView.frame.size.width * h, 0, self.contentView.frame.size.width, self.contentView.frame.size.height);
             [_myscrollview addSubview:imageview];
        }_myscrollview.pagingEnabled=YES;
        //隐藏水平方向 灰条
        _myscrollview.showsHorizontalScrollIndicator = NO;
        //去掉弹性
        _myscrollview.bounces = NO;
        _myscrollview.delegate=self;
        [self pagec];
        //_myscrollview.userInteractionEnabled=YES;
	}
    
    
    
	return _myscrollview;
}


//- (UILabel *)mylabel {
//	if(_mylabel == nil) {
//		_mylabel = [[UILabel alloc] init];
//	}
//	return _mylabel;
//}



@end
