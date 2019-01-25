//
//  ChatViewController.m
//  NavDemo
//
//  Created by Karthus on 2019/1/24.
//  Copyright © 2019 Karthus. All rights reserved.
//

#import "ChatViewController.h"

@interface ChatViewController ()

@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initLeftTitleWithImageFixed];
    [self initRightTitleWithImageFixed];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)initLeftTitleWithImageFixed {
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 88, 44)];
    nameLabel.textAlignment = NSTextAlignmentLeft;
    nameLabel.backgroundColor = [UIColor clearColor];
    nameLabel.textColor = [UIColor whiteColor];
    nameLabel.font = [UIFont systemFontOfSize:18.0f];
    nameLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    
    NSMutableAttributedString *tmpName = [[NSMutableAttributedString alloc] init];
    NSAttributedString* name = [[NSAttributedString alloc] initWithString:@"XXX" attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:18]}];
    NSAttributedString *status = [[NSAttributedString alloc] initWithString:@"手机在线" attributes:@{ NSFontAttributeName : [UIFont systemFontOfSize:10]}];
    [tmpName appendAttributedString:name];
    [tmpName appendAttributedString:status];
    [nameLabel setAttributedText:tmpName];
    
    UIButton* backButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    backButton.titleEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    [backButton setBackgroundImage:[UIImage imageNamed:@"icon_back_n"] forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(handleTapBackBtn) forControlEvents:UIControlEventTouchUpInside];
    
//    UIBarButtonItem* backItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_back_n"] style:UIBarButtonItemStyleDone target:self action:@selector(handleTapBackBtn)];
    
    UIBarButtonItem* backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    UIBarButtonItem* nameItem = [[UIBarButtonItem alloc] initWithCustomView:nameLabel];
    backItem.tintColor = [UIColor whiteColor];
    
//    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]
//                                       initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
//                                       target:nil action:nil];
//    negativeSpacer.width = -16;
    [self.navigationItem setLeftItemsSupplementBackButton:YES];
    [self.navigationItem setLeftBarButtonItems: [NSArray arrayWithObjects:nameItem, nil] animated:NO];
}

- (void) initRightTitleWithImageFixed {
    UIBarButtonItem *optionItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"option"] style:UIBarButtonItemStyleDone target:self action:nil];
    optionItem.tintColor = [UIColor whiteColor];
    
    UIBarButtonItem* fileItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"file"] style:UIBarButtonItemStyleDone target:self action:nil];
    fileItem.tintColor = [UIColor whiteColor];
    
    UIBarButtonItem* callItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"call"] style:UIBarButtonItemStyleDone target:self action:nil];
    callItem.tintColor = [UIColor whiteColor];
    [self.navigationItem setRightBarButtonItems:[NSArray arrayWithObjects:optionItem, fileItem, callItem, nil]];
};

- (void)handleTapBackBtn {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
