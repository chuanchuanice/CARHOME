//
//  NomalTableViewCell.m
//  TRProject
//
//  Created by tarena on 2017/1/11.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import "NomalTableViewCell.h"

@implementation NomalTableViewCell
//@property(nonatomic)UIImageView*myimageview;
//@property(nonatomic)UILabel*mytitleLabel;
//@property(nonatomic)UILabel*myDateLabel;
//@property(nonatomic)UILabel*myWatchLabel;

- (void)awakeFromNib {
    [super awakeFromNib];
  
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

- (UIImageView *)myimageview {
	if(_myimageview == nil) {
		_myimageview = [[UIImageView alloc] init];
        [self.contentView addSubview:_myimageview];
        [_myimageview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.equalTo(8);
            make.bottom.equalTo(-8);
            make.width.equalTo(self.myimageview.mas_height).multipliedBy(1.2);
        }];_myimageview.layer.cornerRadius=3;
        _myimageview.layer.masksToBounds=YES;
	}
	return _myimageview;
}



- (UILabel *)mytitleLabel {
	if(_mytitleLabel == nil) {
		_mytitleLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_mytitleLabel];
        [_mytitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.myimageview.mas_right).offset(8);
            make.top.equalTo(8);
            make.right.equalTo(-8);
            make.height.equalTo(self.myimageview.mas_height).multipliedBy(0.66);
            
        }];_mytitleLabel.numberOfLines=2;
	}
	return _mytitleLabel;
}

- (UILabel *)myDateLabel {
	if(_myDateLabel == nil) {
		_myDateLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_myDateLabel];
        [_myDateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           make.left.equalTo(self.myimageview.mas_right).offset(8);
            make.bottom.equalTo(self.myimageview.bottom);
            make.top.equalTo(self.mytitleLabel.mas_bottom);
            make.width.equalTo(self.mytitleLabel.mas_width).multipliedBy(0.5);
        }];
        
	}
	return _myDateLabel;
}

- (UILabel *)myWatchLabel {
	if(_myWatchLabel == nil) {
		_myWatchLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_myWatchLabel];
        [_myWatchLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-8);
            make.bottom.equalTo(self.myimageview.bottom);
            make.top.equalTo(self.mytitleLabel.mas_bottom);
            make.width.equalTo(self.mytitleLabel.mas_width).multipliedBy(0.5);
        }];_myWatchLabel.textAlignment=NSTextAlignmentRight;
	}
	return _myWatchLabel;
}

@end
