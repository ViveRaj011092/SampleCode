//
//  ViewController.h
//  CustomTableView
//
//  Created by El Capitan on 01/10/16.
//  Copyright © 2016 El Capitan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txtField;
- (IBAction)addBtn:(id)sender;

- (IBAction)deleteBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

