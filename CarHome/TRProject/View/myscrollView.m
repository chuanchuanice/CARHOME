//
//  myscrollView.m
//  TRProject
//
//  Created by tarena on 2017/1/12.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import "myscrollView.h"
#import "TopTRTableViewCell.h"

@implementation myscrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event

{
    
    TopTRTableViewCell * cell = self.superview;
    
    [cell touchesBegan:touches withEvent:event];
    
}


- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event


{
    
    TopTRTableViewCell * cell = self.superview;
    
    [cell touchesEnded:touches withEvent:event];
    
}
@end
