//
//  CrossSwipeViewController.h
//  CrossSwipeTiles
//
//  Created by Burhan Ateeq on 5/5/15.
//  Copyright (c) 2015 ExperLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TileContainerView;
@class SphereDataStructure;

@interface CrossSwipeViewController : UIViewController
{
	SphereDataStructure *appSphere;
	NSInteger            appSphereX;
	NSInteger            appSphereY;
    NSInteger            tileWidth;
    NSInteger            tileHeight;
    TileContainerView   *tileContainer;
}

- (IBAction)handleSwipes:(UIGestureRecognizer *)sender;

@property (retain) NSMutableArray *tileData;

@end
