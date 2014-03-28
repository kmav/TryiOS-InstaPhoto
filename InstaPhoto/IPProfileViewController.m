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
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320,480);
    self.scrollView.backgroundColor = [UIColor whiteColor];
    
    // Creates a view for displaying an image
    // If not a png we need to specify image extension
	UIImageView *logoView = [[UIImageView alloc] initWithImage:
                             [UIImage imageNamed:@"higgie_profile_image"]];
    // changed to go top-left
    logoView.frame = CGRectMake(20,20,100,114);
    // The frame rectangle, which describes the view’s location
    // and size in its superview’s coordinate system
	// logoView.frame = self.view.frame;
	[self.scrollView addSubview:logoView];
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,140,280,40)];
    nameLabel.text = @"Name: Gregg Pollack";
    [self.view addSubview:nameLabel];
    
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,200,280,40)];
    cityLabel.text = @"From: Orlando";
    [self.scrollView addSubview:cityLabel];
    
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(12,260,300,180)];
    biography.font = [UIFont fontWithName:@"Helvetica" size:15];
    biography.editable = NO;
    biography.text = @"Gregg Pollack is the ... ήρωας της εκπαίδευσης iOS και Ruby";
    [self.scrollView addSubview:biography];
    
    UILabel *memberSinceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,440,280,40)];
    memberSinceLabel.text = @"November 2012";
    [self.scrollView addSubview:memberSinceLabel];

    [self.view addSubview:self.scrollView];
    // Add the scrollView onto the ViewController’s View

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
