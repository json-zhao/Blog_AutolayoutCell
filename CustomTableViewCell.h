//
//  CustomTableViewCell.h
//  AutolayoutCell
//
//  Created by jie on 16/2/18.
//  Copyright © 2016年 jie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@end
