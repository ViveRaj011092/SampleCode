//
//  CustomCell.h
//  CustomTableView
//
//  Created by El Capitan on 05/10/16.
//  Copyright © 2016 El Capitan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *thumbImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *helloLabel;
@property (weak, nonatomic) IBOutlet UILabel *vivekLabel;

@end
