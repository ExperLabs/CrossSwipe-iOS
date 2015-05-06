//
//  SphereDataStructure.h
//  CrossSwipeTiles
//
//  Created by Burhan Ateeq on 5/5/15.
//  Copyright (c) 2015 ExperLabs. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface SphereDataStructure : NSObject 
{
}

@property (retain) NSMutableArray *rows;

- (void)setupWithArrayWithObjects:(NSArray *)objects;
- (void)addObjectsFromArray:(NSArray *)objects;
- (NSObject *)getObjectAtX:(NSInteger)x andAtY:(NSInteger)y;
- (NSInteger)getSize;

@end
