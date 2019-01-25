//
//  ChatViewController1.m
//  NavDemo
//
//  Created by Karthus on 2019/1/9.
//  Copyright © 2019 Karthus. All rights reserved.
//

#import "ChatViewController1.h"

#define SCREEN_WIDTH            [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT           [[UIScreen mainScreen] bounds].size.height

@interface ChatViewController1 ()

@property (assign, nonatomic) NSInteger type;

@end

@implementation ChatViewController1

- (id)initWithType:(NSInteger) type {
    self = [super initWithNibName:NSStringFromClass([ChatViewController1 class]) bundle:nil];
    if (self)
    {
        _type = type;
    }
    
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    [self initLeftTitleWithImageFixed];
    if (_type == 1) {
        [self initRightTitleWithImageFixed];
    } else if (_type == 2) {
        [self initRightTitleWithBigImage];
    }
    
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
    
    UIBarButtonItem* backItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back"] style:UIBarButtonItemStyleDone target:self action:@selector(handleTapBackBtn)];
    UIBarButtonItem* nameItem = [[UIBarButtonItem alloc] initWithCustomView:nameLabel];
    backItem.tintColor = [UIColor whiteColor];
    
    [self.navigationItem setLeftItemsSupplementBackButton:YES];
    [self.navigationItem setLeftBarButtonItems: [NSArray arrayWithObjects:nameItem, nil]];
}

- (void)initRightTitleWithBigImage {
//    UIBarButtonItem *optionItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_list"] style:UIBarButtonItemStyleDone target:self action:nil];
//    optionItem.tintColor = [UIColor whiteColor];
//
//    UIBarButtonItem* fileItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_file_n"] style:UIBarButtonItemStyleDone target:self action:nil];
//    fileItem.tintColor = [UIColor whiteColor];
//
//    UIBarButtonItem* callItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_addcall_n"] style:UIBarButtonItemStyleDone target:self action:nil];
//    callItem.tintColor = [UIColor whiteColor];
//    [self.navigationItem setRightBarButtonItems:[NSArray arrayWithObjects:optionItem, fileItem, callItem, nil]];
    
    UIButton* optionButton = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 40 - 44, 0, 44, 44)];
    [optionButton setBackgroundImage:[UIImage imageNamed:@"icon_list"] forState:UIControlStateNormal];
    UIButton* fileButton = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 40 - 44*2, 0, 44, 44)];
    [fileButton setBackgroundImage:[UIImage imageNamed:@"icon_file_n"] forState:UIControlStateNormal];
    UIButton* callButton = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 40 - 44*3, 0, 44, 44)];
    [callButton setBackgroundImage:[UIImage imageNamed:@"icon_addcall_n"] forState:UIControlStateNormal];

    UIBarButtonItem* optionItem = [[UIBarButtonItem alloc] initWithCustomView:optionButton];
    UIBarButtonItem* fileItem = [[UIBarButtonItem alloc] initWithCustomView:fileButton];
    UIBarButtonItem* callItem = [[UIBarButtonItem alloc] initWithCustomView:callButton];
//    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]
//                                       initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
//                                       target:nil action:nil];
//    negativeSpacer.width = -10;

    [self.navigationItem setRightBarButtonItems:[NSArray arrayWithObjects:optionItem, fileItem, callItem, nil]];
};

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
