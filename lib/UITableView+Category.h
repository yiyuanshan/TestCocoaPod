//
//  UITableView+Category.h
//  LKMerchant_iPhone
//
//  Created by shanyiyuan on 16/8/29.
//  Copyright © 2016年 苏州联康网络有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Category)
/*!
*  @author Near_shan, 16-08-29 18:08:21
*
*  @brief  创建UITableVIewCell
*
*  @param string 标识符
*
*  @return UITableViewCell
*/
- (UITableViewCell *)getCellWithCellNibName:(NSString *)string;
/*!
*  @author Near_shan, 16-08-29 18:08:43
*
*  @brief  创建UITableVIewCell
*
*  @param string 标识符
*  @param block  block
*
*  @return UITableViewCell
*/
- (UITableViewCell *)getCellWithCellNibName:(NSString *)string block:(void (^)(UITableViewCell *))block;
@end
