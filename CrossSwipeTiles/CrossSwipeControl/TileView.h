//
//  TileView.h
//  CrossSwipeTiles
//
//  Created by Burhan Ateeq on 5/5/15.
//  Copyright (c) 2015 ExperLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CrossSwipeViewController;
@class Data;
 
@interface TileView : UIView 
{
}

- (id)initWithFrame:(CGRect)frame andCrossSwipeViewController:(CrossSwipeViewController *)mainVC andTag:(NSInteger)iTag;
- (void)setData:(Data *)dataIn loadIconSynchronously:(BOOL)fSyncLoad;

@property (nonatomic, retain) CrossSwipeViewController *crossSwipeViewController;
@property (nonatomic, retain) Data *data;

@property (retain) UIView *box;
@property (retain) UILabel *titleLabel;
@property (retain) UITextView *descriptionLabel;

@end
