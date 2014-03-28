//
//  IPFeedViewController.m
//  InstaPhoto
//
//  Created by Konstantinos M on 28/3/14.
//  Copyright (c) 2014 com.lumicsoft. All rights reserved.
//

#import "IPFeedViewController.h"

@interface IPFeedViewController ()

@end

@implementation IPFeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Feed";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_feed"];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
