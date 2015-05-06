//
//  TileContainerView.m
//  CrossSwipeTiles
//
//  Created by Burhan Ateeq on 5/5/15.
//  Copyright (c) 2015 ExperLabs. All rights reserved.
//

#import "TileContainerView.h"
#import "TileView.h"

@implementation TileContainerView

@synthesize CrossSwipeViewController;

- (id)initWithWidth:(CGFloat)width andHeight:(CGFloat)height andCrossSwipeViewController:(CrossSwipeViewController*)mainVC
{
    self = [super initWithFrame:CGRectMake(-width, -height, width * 4, height * 4)];
    if (self)
    {
        tileWidth = width;
        tileHeight = height;

        /*
		 *
		 * The tiles are tagged as follows:
		 *
		 *    1   2   3   4
		 *    5   6   7   8
 		 *    9  10  11  12  
		 *   13  14  15  16
		 *
		 * At one time only tiles 6, 7, 10 and 11 are visible on screen. 
		 */
		
		self.CrossSwipeViewController = mainVC;
		
        TileView *tileView = [[TileView alloc] initWithFrame:CGRectMake(0, 0, tileWidth, tileHeight)
                                 andCrossSwipeViewController:self.CrossSwipeViewController
                                                      andTag:1];
		[self addSubview:tileView];
		
		tileView = [[TileView alloc] initWithFrame:CGRectMake(tileWidth, 0, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:2];
		[self addSubview:tileView];

        tileView = [[TileView alloc] initWithFrame:CGRectMake(tileWidth * 2, 0, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:3];
		[self addSubview:tileView];

		tileView = [[TileView alloc] initWithFrame:CGRectMake(tileWidth * 3, 0, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:4];
		[self addSubview:tileView];
		
		tileView = [[TileView alloc] initWithFrame:CGRectMake(0, tileHeight, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:5];
		[self addSubview:tileView];
		
		
		tileView = [[TileView alloc] initWithFrame:CGRectMake(tileWidth, tileHeight, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:6];
		[self addSubview:tileView];
		
		
		tileView = [[TileView alloc] initWithFrame:CGRectMake(tileWidth * 2, tileHeight, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:7];
		[self addSubview:tileView];
		
		
		tileView = [[TileView alloc] initWithFrame:CGRectMake(tileWidth * 3, tileHeight, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:8];
		[self addSubview:tileView];
		
		
		tileView = [[TileView alloc] initWithFrame:CGRectMake(0, tileHeight * 2, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:9];
		[self addSubview:tileView];
		
		
		tileView = [[TileView alloc] initWithFrame:CGRectMake(tileWidth, tileHeight * 2, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:10];
		[self addSubview:tileView];
		
		
		tileView = [[TileView alloc] initWithFrame:CGRectMake(tileWidth * 2, tileHeight * 2, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:11];
		[self addSubview:tileView];
		
		
		tileView = [[TileView alloc] initWithFrame:CGRectMake(tileWidth * 3, tileHeight * 2, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:12];
		[self addSubview:tileView];
		
		
		tileView = [[TileView alloc] initWithFrame:CGRectMake(0, tileHeight * 3, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:13];
		[self addSubview:tileView];
		
		
		tileView = [[TileView alloc] initWithFrame:CGRectMake(tileWidth, tileHeight * 3, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:14];
		[self addSubview:tileView];
		
		
		tileView = [[TileView alloc] initWithFrame:CGRectMake(tileWidth * 2, tileHeight * 3, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:15];
		[self addSubview:tileView];
		
		
		tileView = [[TileView alloc] initWithFrame:CGRectMake(tileWidth * 3, tileHeight * 3, tileWidth, tileHeight)
                       andCrossSwipeViewController:self.CrossSwipeViewController
                                            andTag:16];
		[self addSubview:tileView];
		
    }
    return self;
}

- (void)setDatas:(NSArray *)appDatas loadIconsSynchronously:(BOOL)fSyncLoad
{
	for (int i = 1; i <= 16; i++) 
	{
		[(TileView *)[self viewWithTag:i] setData:(Data *)[appDatas objectAtIndex:(i - 1)] loadIconSynchronously:fSyncLoad];
	}
}


@end
