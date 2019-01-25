//
//  MainTableViewController.m
//  NavDemo
//
//  Created by Karthus on 2019/1/8.
//  Copyright © 2019 Karthus. All rights reserved.
//

#import "MainTableViewController.h"
#import "NormalView/NormalViewController.h"
#import "ChatView/ChatViewController1.h"
#import "ChatView/ChatViewController.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 32, 32)];
    [button setImage:[UIImage imageNamed:@"avatar_default"] forState:(UIControlStateNormal)];
    UIBarButtonItem* leftitem = [[UIBarButtonItem alloc] initWithCustomView:button];

    
    [self.navigationItem setLeftBarButtonItems:[NSArray arrayWithObjects: leftitem, nil]];
    self.navigationController.navigationBarHidden = NO;
    [self.navigationItem setHidesBackButton:NO];
    
    
//    self.navigationItem.backBarButtonItem.title = @" ";
//    [self.navigationItem.backBarButtonItem setTintColor:[UIColor whiteColor]];
//    UIImage* backButtonBackgroundImage = [UIImage imageNamed:@"icon_back_n"];
//    backButtonBackgroundImage = [backButtonBackgroundImage resizableImageWithCapInsets:UIEdgeInsetsMake(0, backButtonBackgroundImage.size.width - 12, 0, 0)];
//    [self.navigationController.navigationBar setBackIndicatorImage:backButtonBackgroundImage];
//    [self.navigationController.navigationBar setBackIndicatorTransitionMaskImage: backButtonBackgroundImage];
//
//    UIBarButtonItem *backBarButton = [[UIBarButtonItem alloc] initWithTitle:@" "
//                                                                      style:UIBarButtonItemStylePlain
//                                                                     target:nil
//                                                                     action:nil];
//
//    backBarButton.tintColor = [UIColor whiteColor];
//    self.navigationItem.backBarButtonItem = backBarButton;
    
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 4;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        ChatViewController* vc = [[ChatViewController alloc] initWithNibName:NSStringFromClass([ChatViewController class]) bundle:nil];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 1){
        UIBarButtonItem *backBarButton = [[UIBarButtonItem alloc] initWithTitle:@""
                                                                          style:UIBarButtonItemStylePlain
                                                                         target:nil
                                                                         action:nil];
        backBarButton.tintColor = [UIColor whiteColor];
        self.navigationItem.backBarButtonItem = backBarButton;
        ChatViewController1 *vc = [[ChatViewController1 alloc] initWithType:1];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 2){
        UIBarButtonItem *backBarButton = [[UIBarButtonItem alloc] initWithTitle:@""
                                                                          style:UIBarButtonItemStylePlain
                                                                         target:nil
                                                                         action:nil];
        backBarButton.tintColor = [UIColor whiteColor];
        self.navigationItem.backBarButtonItem = backBarButton;
        ChatViewController1 *vc = [[ChatViewController1 alloc] initWithType:2];
        [self.navigationController pushViewController:vc animated:YES];
    } else if (indexPath.row == 3) {
        UIBarButtonItem *backBarButton = [[UIBarButtonItem alloc] initWithTitle:@""
                                                                          style:UIBarButtonItemStylePlain
                                                                         target:nil
                                                                         action:nil];
        backBarButton.tintColor = [UIColor whiteColor];
        self.navigationItem.backBarButtonItem = backBarButton;
        NormalViewController* vc = [[NormalViewController alloc] initWithNibName:NSStringFromClass([NormalViewController class]) bundle:nil];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
