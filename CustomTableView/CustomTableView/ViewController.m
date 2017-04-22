//
//  ViewController.m
//  CustomTableView
//
//  Created by El Capitan on 01/10/16.
//  Copyright © 2016 El Capitan. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()

@property(nonatomic,strong) NSMutableArray *tableData;
@property(nonatomic,strong) NSMutableArray *thumbnails;
@property(nonatomic,strong) CustomCell *customcell;

@end

@implementation ViewController
{
//    NSMutableArray * tableData;
//    NSMutableArray *thumbnails;
    CustomCell *cell1;
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableData = [NSMutableArray arrayWithObjects:@"Egg Benedi ctyyyyyyy yyyyyyy yyyyyy yyyyyy yyy yyyy yy gfgfhg vgghgh vgvgvg gvgvgvgv bbbbbbbb bbbbb bbbbbb bbbbbbbb bbbbbbb nnnnnnnn nnnnnnnn nn nnnnnnn", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee dfgfsg sfg gfgg fgfg fg fgdf gdfgd fgdfg dd hdg hgdhdgh dghdg hdg h ghg hgfh hff jfhj fhjfhfhj fhj fhj hjfhj fhj fgrr grg rger ger grgr rth ryghgh ghg hgdh dhdhdhhu ghiugh egheiug eiurhg erghe ugheuhg", @"Vegetable Curry", nil];
    
    self.thumbnails = [NSMutableArray arrayWithObjects:@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg", @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg", nil];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.tableView.delegate=self;
//    self.tableView.dataSource=self;

   
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"CustomCell"];
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight=100;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setUpCell:(CustomCell *)cell atIndexPath:(NSIndexPath *)indexPath{
//    [cell.helloLabel sizeToFit];
//    [cell.vivekLabel sizeToFit];
    cell.thumbImage.image=[UIImage imageNamed:[self.thumbnails objectAtIndex:indexPath.row]];
    cell.nameLabel.text=[_tableData objectAtIndex:indexPath.row];
    cell.helloLabel.text=@"Hello...";
    cell.vivekLabel.text=@"Vivek...";
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_tableData count];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    NSString *cellIdentifier= @"CustomCell";
    
    CustomCell *cell=(CustomCell *)[self.tableView dequeueReusableCellWithIdentifier:@"CustomCell" forIndexPath:indexPath];
    if(cell == nil){
        NSArray *nib=[[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell=[nib objectAtIndex:0];
    }
    
//    cell.thumbImage.image=[UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
//    cell.nameLabel.text=[tableData objectAtIndex:indexPath.row];
    [self setUpCell:cell atIndexPath:indexPath];
    cell1=cell;
    return cell;
}

//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//    static CustomCell *cell = nil;
//    
//    static dispatch_once_t onceToken;
//    
//    dispatch_once(&onceToken, ^{
//        cell = [self.tableView dequeueReusableCellWithIdentifier:@"CustomCell"];
//    });
//    
//    [self setUpCell:cell atIndexPath:indexPath];
//
//    return [self calculateHeightForConfiguredSizingCell:cell];
//    
////    return  UITableViewAutomaticDimension;
//}
//
//- (CGFloat)calculateHeightForConfiguredSizingCell:(UITableViewCell *)sizingCell {
//    
//    [sizingCell layoutIfNeeded];
//    
//    CGSize size = [sizingCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
//    return size.height + 1;
//}
- (IBAction)addBtn:(id)sender {
}

- (IBAction)deleteBtn:(id)sender {
}
@end
