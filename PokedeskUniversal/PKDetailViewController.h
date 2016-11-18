//
//  PKDetailViewController.h
//  PokedeskUniversal
//
//  Created by Lázaro Sánchez Campos on 20/11/13.
//  Copyright (c) 2013 UPM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Race.h"

@interface PKDetailViewController : UIViewController <UISplitViewControllerDelegate>

- (void) setRace:(Race*)race;
@property (strong, nonatomic) id detailItem;
@property (nonatomic,strong) Race* race;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
