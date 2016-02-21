//
//  ViewController.m
//  AutolayoutCell
//
//  Created by jie on 16/2/18.
//  Copyright © 2016年 jie. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"
#import "CustomTwoTableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *_tableList;
@property(nonatomic,retain)NSMutableArray *dataArray;
@property(nonatomic,retain)CustomTableViewCell *cell;
@property(nonatomic,retain)CustomTwoTableViewCell *twoCell;
@end


@interface Model : NSObject
@property(nonatomic,retain)NSString *title;
@property(nonatomic,retain)NSString *content;
@property(nonatomic,retain)NSString *contentTwo;
@end
@implementation Model



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   self.dataArray = [[NSMutableArray alloc] initWithCapacity:0];
    for (int i = 0; i < 10; i++) {
        Model *model = [[Model alloc] init];
        if (i%5 == 1) {
            model.title = @"杀寇决等哈就坑阿达就开始打哈看得见哈杀就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几到几哈接电话";
            model.content = @"的交伙食费就开始放暑假上放暑假的刚就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几时间各回各家时间看刚换时间供货商看估计是司空见惯和世界观海口市个机会可是供货商髋关节还是个开奖号工商局和顾客极光谁开个机是";
            model.contentTwo = @"Test开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑";
            [self.dataArray addObject:model];
        }else if (i%5 == 2){
            model.title = @"杀寇决等哈就坑阿达就开始打哈就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几哈杀到几哈接电话";
            model.content = @"的交伙食费就开始放暑假上放暑假的刚换时间就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几各家时间看刚换时间供货商看估计是司空见惯和世界观海口市个机会可是供货商髋关节还是个开奖号工商局和顾客极光谁开个机是";
              model.contentTwo = @"Test开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑";
            [self.dataArray addObject:model];
        }else if (i%5 == 3){
            model.title = @"杀寇决等哈就坑阿达就开始打";
            model.content = @"的交伙食费就开始放暑假上放暑假的刚换时间各回各家时间看刚换时间供货商看估计是司空见惯和世界观海口市个机会可是供货商髋关节还是个开奖号工商局和顾客极光谁开个机是";
            model.contentTwo = @"Test开始放暑假上放始放暑假上放暑开开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始始放暑假上放暑开始放暑假上放暑开始放暑假上开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑";
            [self.dataArray addObject:model];
        }else if (i%5 == 4){
            model.title = @"杀寇决等哈就坑阿接电话";
            model.content = @"的交伙食费就开始";
            model.contentTwo = @"Test开始放开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑";
            [self.dataArray addObject:model];
        }else{
            model.title = @"杀寇决等哈就坑阿达就开始打哈看得见哈杀到几哈接电话";
            model.content = @"的交伙食费就开始放暑就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几假上放暑假的刚换时间各回各家时间看刚换时间供货商看估计是司空见惯和世界观海口市个机会可是供货商髋关节还是个开奖号工商局和顾客极光谁开个机是";
            model.contentTwo = @"Test开始放暑假上放始放暑";
            [self.dataArray addObject:model];
        }
    }
    [self._tableList reloadData];

}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        static NSString *str =@"CustomTableViewCell";
        self.cell = [tableView dequeueReusableCellWithIdentifier:str];
        if (self.cell == nil) {
            self.cell = [[[NSBundle mainBundle]loadNibNamed:@"CustomTableViewCell" owner:self options:nil]lastObject];
        }
        self.cell.selectionStyle = UITableViewCellSelectionStyleNone;
        Model *model = [self.dataArray objectAtIndex:indexPath.row];
        self.cell.titleLabel.text = model.title;
        self.cell.contentLabel.text = model.content;
        return self.cell;

    }else{
        static NSString *str =@"CustomTwoTableViewCell";
        self.twoCell = [tableView dequeueReusableCellWithIdentifier:str];
        if (self.twoCell == nil) {
            self.twoCell = [[[NSBundle mainBundle]loadNibNamed:@"CustomTwoTableViewCell" owner:self options:nil]lastObject];
        }
        self.twoCell.selectionStyle = UITableViewCellSelectionStyleNone;
        Model *model = [self.dataArray objectAtIndex:indexPath.row];
        self.twoCell.title.text = model.title;
        self.twoCell.content.text = model.content;
        self.twoCell.twoContent.text = model.contentTwo;
        return self.twoCell;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat preMaxWaith =[UIScreen mainScreen].bounds.size.width - 25;
    if (indexPath.section  == 0) {
        Model *model = [self.dataArray objectAtIndex:indexPath.row];
        self.cell.titleLabel.text = model.title;
        self.cell.contentLabel.text = model.content;
        [self.cell.titleLabel setPreferredMaxLayoutWidth:preMaxWaith];
        [self.cell.contentLabel setPreferredMaxLayoutWidth:preMaxWaith];
        [self.cell setNeedsUpdateConstraints];
        [self.cell updateConstraintsIfNeeded];
        CGFloat height = [self.cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height+1;
        return height;
    }else{
        Model *model = [self.dataArray objectAtIndex:indexPath.row];
        self.twoCell.title.text = model.title;
        self.twoCell.content.text = model.content;
        self.twoCell.twoContent.text = model.contentTwo;
        [self.twoCell.title setPreferredMaxLayoutWidth:preMaxWaith];
        [self.twoCell.content setPreferredMaxLayoutWidth:preMaxWaith];
        [self.twoCell.twoContent setPreferredMaxLayoutWidth:preMaxWaith];
        [self.twoCell setNeedsUpdateConstraints];
        [self.twoCell updateConstraintsIfNeeded];
        CGFloat height = [self.twoCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height+1;
        return height;
    }
}
@end
