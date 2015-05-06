//
//  CrossSwipeViewController.m
//  CrossSwipeTiles
//
//  Created by Burhan Ateeq on 5/5/15.
//  Copyright (c) 2015 ExperLabs. All rights reserved.
//


#import "CrossSwipeViewController.h"
#import "TileContainerView.h"
#import "Data.h"
#import "SphereDataStructure.h"

@implementation CrossSwipeViewController

@synthesize tileData;

- (void)viewDidLoad
{
	[super viewDidLoad];
    
    tileWidth = [UIScreen mainScreen].bounds.size.width / 2;
    tileHeight = [UIScreen mainScreen].bounds.size.height / 2;
	
    appSphere = [[SphereDataStructure alloc] init];
    [appSphere setupWithArrayWithObjects:[self tileData]];
	
    tileContainer = [[TileContainerView alloc] initWithWidth:tileWidth andHeight:tileHeight andCrossSwipeViewController:self];
    [self.view insertSubview:tileContainer atIndex:0];
 
    UISwipeGestureRecognizer *swipeRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipes:)];
	swipeRecognizer.direction = UISwipeGestureRecognizerDirectionRight;
	[self.view addGestureRecognizer:swipeRecognizer];
	
	swipeRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipes:)];
	swipeRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
	[self.view addGestureRecognizer:swipeRecognizer];
	
	swipeRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipes:)];
	swipeRecognizer.direction = UISwipeGestureRecognizerDirectionLeft;
	[self.view addGestureRecognizer:swipeRecognizer];
	
	swipeRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipes:)];
	swipeRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
	[self.view addGestureRecognizer:swipeRecognizer];

    appSphereX = 0;
    appSphereY = 0;
    
    [tileContainer setDatas:[self getTileDataForViewFromSphere] loadIconsSynchronously:YES];
}

- (NSArray *)getTileDataForViewFromSphere
{
	NSMutableArray *tilesData = [[NSMutableArray alloc] initWithCapacity:16];
	
	for (NSInteger i = appSphereY; i < (appSphereY + 4); ++i)
	{
		for (NSInteger j = appSphereX; j < (appSphereX + 4); ++j)
		{
			[tilesData addObject:[(SphereDataStructure *)appSphere getObjectAtX:j andAtY:i]];
		}
	}
	
	return tilesData;
}

- (void)animationDidStop:(NSString*)animationID finished:(BOOL)finished context:(void *)context
{
	[tileContainer setDatas:[self getTileDataForViewFromSphere] loadIconsSynchronously:NO];
	
	CGRect frame = tileContainer.frame;
	frame.origin.x = -tileWidth;
	frame.origin.y = -tileHeight;
	tileContainer.frame = frame;
}

- (IBAction)handleSwipes:(UIGestureRecognizer *)sender
{
	UISwipeGestureRecognizerDirection swipeDirection = [(UISwipeGestureRecognizer *)sender direction];
	NSInteger newOriginX = -tileWidth;
	NSInteger newOriginY = -tileHeight;
	
	if (swipeDirection == UISwipeGestureRecognizerDirectionRight) 
	{
		NSLog(@"right swipe");
		newOriginX = 0;
		appSphereX--;
		NSLog(@"appSphere at (%ld,%ld)", appSphereX, appSphereY);
	}
	else if (swipeDirection == UISwipeGestureRecognizerDirectionUp)
	{
		NSLog(@"up swipe");
		newOriginY = -tileHeight * 2;
		appSphereY++;
		NSLog(@"appSphere at (%ld,%ld)", appSphereX, appSphereY);
	}
	else if (swipeDirection == UISwipeGestureRecognizerDirectionLeft)
	{
		NSLog(@"left swipe");
		newOriginX = -tileWidth * 2;
		appSphereX++;
		NSLog(@"appSphere at (%ld,%ld)", appSphereX, appSphereY);
	}
	else if (swipeDirection == UISwipeGestureRecognizerDirectionDown)
	{
		NSLog(@"down swipe");
		newOriginY = 0;
		appSphereY--;
		NSLog(@"appSphere at (%ld,%ld)", appSphereX, appSphereY);
	}
	
	[UIView beginAnimations:@"SwipeTilesContainer" context:nil];
	[UIView setAnimationDuration:.2];
	[UIView setAnimationBeginsFromCurrentState:YES];
	CGRect frame = tileContainer.frame;
	frame.origin.x = newOriginX;
	frame.origin.y = newOriginY;
	tileContainer.frame = frame;
	
	[UIView setAnimationDelegate:self];
	[UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:context:)];
	
	[UIView commitAnimations];
}


- (void)didReceiveMemoryWarning
{
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload 
{
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations.
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */


@end

