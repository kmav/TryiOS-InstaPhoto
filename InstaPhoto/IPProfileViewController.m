//
//  IPProfileViewController.m
//  InstaPhoto
//
//  Created by Konstantinos M on 28/3/14.
//  Copyright (c) 2014 com.lumicsoft. All rights reserved.
//

#import "IPProfileViewController.h"

@interface IPProfileViewController ()

@end

@implementation IPProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Profile";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_profile"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    
    // Creates a view for displaying an image
    // If not a png we need to specify image extension
	UIImageView *logoView = [[UIImageView alloc] initWithImage:
                             [UIImage imageNamed:@"higgie_profile_image"]];
    // Determines how a view lays out its content
	[logoView setContentMode:UIViewContentModeScaleAspectFit];
    // The frame rectangle, which describes the view’s location
    // and size in its superview’s coordinate system
	logoView.frame = self.view.frame;
	[self.view addSubview:logoView];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
