//
//  PKDetailViewController.m
//  PokedeskUniversal
//
//  Created by Lázaro Sánchez Campos on 20/11/13.
//  Copyright (c) 2013 UPM. All rights reserved.
//

#import "PKDetailViewController.h"
#import "WebViewController.h"
#import "Race.h"

@interface PKDetailViewController ()
@property (weak, nonatomic) IBOutlet UIToolbar *toolbar;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imagen;


@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation PKDetailViewController
@synthesize toolbar = _toolbar;
@synthesize label = _label;
@synthesize imagen = _imagen;

#pragma mark - Managing the detail item

- (void) awakeFromNib
{
    self.splitViewController.delegate = self;
    [super awakeFromNib];
}

-(void)setRace:(Race *)race
{
    //Make sure you're not setting up the same monster.
    if (_race != race) {
        _race = race;
        
        //Update the UI to reflect the new monster on the iPad.
        [self refreshUI];
    }
}

-(void) refreshUI
{
    Race * race = self.race;
    _label.text = race.name;
    _imagen.image = [UIImage imageNamed:race.icon];
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)svc
     willHideViewController:(UIViewController *)aViewController
          withBarButtonItem:(UIBarButtonItem *)barButtonItem
       forPopoverController:(UIPopoverController *)pc {
    
    barButtonItem.title = @"Ver Master";
    
    NSMutableArray * array = [self.toolbar.items mutableCopy];
    [array insertObject:barButtonItem atIndex:0];
    self.toolbar.items = array;
    
    self.masterPopoverController = pc;
    
}
- (void)splitViewController:(UISplitViewController *)splitController
     willShowViewController:(UIViewController *)viewController
  invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view,
    //invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
    NSMutableArray * array = [self.toolbar.items mutableCopy];
    [array removeObject:barButtonItem];
    self.toolbar.items = array;    
}
@end
