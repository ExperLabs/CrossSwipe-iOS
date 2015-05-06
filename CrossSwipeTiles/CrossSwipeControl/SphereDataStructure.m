//
//  SphereDataStructure.m
//  CrossSwipeTiles
//
//  Created by Burhan Ateeq on 5/5/15.
//  Copyright (c) 2015 ExperLabs. All rights reserved.
//


#import "SphereDataStructure.h"

@implementation SphereDataStructure

@synthesize rows;

- (void)setupWithArrayWithObjects:(NSArray *)objects
{
    NSInteger lengthOfSide = 1;
	
    for (lengthOfSide = 1; 
		 (lengthOfSide * lengthOfSide) <= [objects count]; 
		 ++lengthOfSide);
	
	--lengthOfSide;
	
	NSLog(@"Side of Largest square inside the objects = %ld", lengthOfSide);
	
	rows = [[NSMutableArray alloc] initWithCapacity:lengthOfSide];
	
    for (int i = 0; i < lengthOfSide; ++i)
	{
		NSMutableArray *aRow = [[NSMutableArray alloc] initWithCapacity:lengthOfSide];
			
		for (int j = 0; j < lengthOfSide; ++j)
		{
			[aRow addObject:[objects objectAtIndex:((i * lengthOfSide) + j)]];
				
		}
		[rows addObject:aRow];
	}
}

- (void)addObjectsFromArray:(NSArray *)objects
{
	for (int j = 0; j < [objects count]; ++j)
	{
		if (j >= [rows count])
		{
			[[rows objectAtIndex:(j % [rows count])] addObject:[objects objectAtIndex:j]];
		}
		else
		{
			[[rows objectAtIndex:j] addObject:[objects objectAtIndex:j]];				
		}
	}
}

- (NSObject *)getObjectAtX:(NSInteger)x andAtY:(NSInteger)y
{
	NSInteger modifiedX = x;
	NSInteger modifiedY = y;
	
	if (y >= [rows count])
	{
		modifiedY = y % [rows count];
	}

	if (x >= [[rows objectAtIndex:modifiedY] count])
	{
		modifiedX = x % [[rows objectAtIndex:modifiedY] count];
	}
	
	return [[rows objectAtIndex:modifiedY] objectAtIndex:modifiedX];		
}

- (NSInteger)getSize
{
	NSInteger size = 0;
	
	for (int i = 0; i < [rows count]; ++i)
	{
		size += [[rows objectAtIndex:i] count];
	}
	
	return size;
}

@end
