//
//  PKMasterViewController.h
//  PokedeskUniversal
//
//  Created by Lázaro Sánchez Campos on 20/11/13.
//  Copyright (c) 2013 UPM. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PKDetailViewController;

@interface PKMasterViewController : UITableViewController

@property (strong, nonatomic) PKDetailViewController *detailViewController;

@end
