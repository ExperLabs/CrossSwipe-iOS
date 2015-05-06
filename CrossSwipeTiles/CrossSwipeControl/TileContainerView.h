//
//  TileContainerView.h
//  CrossSwipeTiles
//
//  Created by Burhan Ateeq on 5/5/15.
//  Copyright (c) 2015 ExperLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CrossSwipeViewController;

@interface TileContainerView : UIView 
{
    CGFloat     tileWidth;
    CGFloat     tileHeight;
}

- (id)initWithWidth:(CGFloat)width andHeight:(CGFloat)height andCrossSwipeViewController:(CrossSwipeViewController*)mainVC;
- (void)setDatas:(NSArray *)appDatas loadIconsSynchronously:(BOOL)fSyncLoad;

@property (nonatomic, assign) CrossSwipeViewController *CrossSwipeViewController;

@end
