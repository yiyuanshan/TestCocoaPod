//
//  UITableView+Category.m
//  LKMerchant_iPhone
//
//  Created by shanyiyuan on 16/8/29.
//  Copyright © 2016年 苏州联康网络有限公司. All rights reserved.
//

#import "UITableView+Category.h"

@implementation UITableView (Category)

- (UITableViewCell *)getCellWithCellNibName:(NSString *)string
{
    if (string.length == 0 || string == nil) {
        string = @"UITABLEVIEWCELL";
    }
    return [self getCellWithCellNibName:string block:nil];
}

- (UITableViewCell *)getCellWithCellNibName:(NSString *)string block:(void (^)(UITableViewCell *))block
{
    id cell = (UITableViewCell*)[self dequeueReusableCellWithIdentifier:string];
    if (cell == nil)
    {
        if ([[string uppercaseString] isEqualToString:@"UITABLEVIEWCELL"])
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:string];
            if (block) block(cell);
        }
        else
        {
            NSArray* nibs = [[NSBundle mainBundle] loadNibNamed:string owner:self options:nil];
            for (id oneObject in nibs)
            {
                if ([oneObject isKindOfClass:NSClassFromString(string)])
                {
                    cell = oneObject;
                }
            }
        }
    }
    return cell;
}
@end
