//
//  ZipCodeTableViewController.m
//  ZipCodeTable
//
//  Created by Di Kong on 1/26/15.
//  Copyright (c) 2015 Software Merchant. All rights reserved.
//

#import "ZipCodeTableViewController.h"
#import "ZipEditViewController.h"


@interface ZipCodeTableViewController () {
    NSInteger selectedIndex;
    NSString *selectedZip;
}

@end


@implementation ZipCodeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}

- (void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.zipList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZipCell"
                                                            forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = self.zipList[indexPath.row];
    
    return cell;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    selectedZip = self.zipList[indexPath.row];
    selectedIndex = indexPath.row;
    return indexPath;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Zip Edit View Delegate
- (void)zipEditInState:(NSString *)state atIndex:(NSInteger)index withZipCode:(NSString *)newZipCode {
    self.zipList[index] = newZipCode;
    [self.zipEditDelegate zipEditInState:self.state
                                 atIndex:selectedIndex
                             withZipCode:self.zipList[selectedIndex]];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    id dest = [segue destinationViewController];
    if ([dest respondsToSelector:@selector(setZipEditDelegate:)])
        [dest setValue:self forKey:@"zipEditDelegate"];
    if ([dest respondsToSelector:@selector(setEditIndex:)])
        [dest setValue:[NSNumber numberWithInteger:selectedIndex] forKey:@"editIndex"];
    if ([dest respondsToSelector:@selector(setZipCode:)])
        [dest setValue:selectedZip forKey:@"zipCode"];
    if ([dest respondsToSelector:@selector(setState:)])
        [dest setValue:self.state forKey:@"state"];
    
}


@end
