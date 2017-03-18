//
//  TopTRTableViewCell.h
//  TRProject
//
//  Created by tarena on 2017/1/11.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myscrollView.h"
@interface TopTRTableViewCell : UITableViewCell<UIScrollViewDelegate>
@property(nonatomic)myscrollView*myscrollview;
@property(nonatomic)NSArray<UIImageView*>*mytopimageview;
//@property(nonatomic)UILabel*mylabel;
@property(nonatomic)UIPageControl*pagec;


@end
