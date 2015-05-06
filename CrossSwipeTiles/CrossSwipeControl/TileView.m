//
//  TileView.m
//  CrossSwipeTiles
//
//  Created by Burhan Ateeq on 5/5/15.
//  Copyright (c) 2015 ExperLabs. All rights reserved.
//

#import "TileView.h"
#import "Data.h"

@implementation TileView

@synthesize crossSwipeViewController, data, box, titleLabel, descriptionLabel;


- (id)initWithFrame:(CGRect)frame andCrossSwipeViewController:(CrossSwipeViewController *)mainVC andTag:(NSInteger)iTag;
{
    if ((self = [super initWithFrame:frame])) 
    {
        [self setCrossSwipeViewController:mainVC];
        self.tag = iTag;
        
        // The Tile View can be customized here. It can be loaded from a Xib file or built up in code.
        
        //NSArray *nibViews = [[NSBundle mainBundle] loadNibNamed:@"TileView" owner:self options:nil];
        //[self addSubview:[nibViews objectAtIndex:0]];
        
        box = [[UIView alloc] initWithFrame:CGRectMake(2, 2, frame.size.width - 4, frame.size.height - 4)];
        box.backgroundColor = [UIColor cyanColor];
        [self addSubview:box];
        
        // Title
        titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 15, 150, 30)];
        titleLabel.font = [UIFont boldSystemFontOfSize:18];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
        titleLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:titleLabel];
        
        // Description
        descriptionLabel = [[UITextView alloc] initWithFrame:CGRectMake(5, 110, 150, 75)];
        descriptionLabel.font = [UIFont boldSystemFontOfSize:14];
        descriptionLabel.textAlignment = NSTextAlignmentCenter;
        descriptionLabel.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
        descriptionLabel.backgroundColor = [UIColor clearColor];
        descriptionLabel.editable = NO;
        descriptionLabel.scrollEnabled = NO;
        [self addSubview:descriptionLabel];
        
    }
    
    return self;
}

- (void)setData:(Data *)dataIn loadIconSynchronously:(BOOL)fSyncLoad
{
    [self setData:dataIn];
    
    titleLabel.text = [dataIn strTitle];
    descriptionLabel.text = [dataIn strDescription];
}

@end
