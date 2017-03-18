//
//  myscrollView.h
//  TRProject
//
//  Created by tarena on 2017/1/12.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import <UIKit/UIKit.h>


//@class myscrollView;
//
//@protocol myscrollViewDelegate <NSObject>
//
//-(void)chuanzhi:(myscrollView*)msv supview:(UIView*)supview;
//
//
//@end

@interface myscrollView : UIScrollView
@property(nonatomic)UIView*supview;
//@property(nonatomic)id<UIScrollViewDelegate>delegate;
@end
