//
//  Data.h
//  CrossSwipeTiles
//
//  Created by Burhan Ateeq on 5/5/15.
//  Copyright (c) 2015 ExperLabs. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Data : NSObject <NSCopying>
{
}

@property (retain) NSString *strId;
@property (retain) NSString *strImageUrl;
@property (retain) NSString *strTitle;
@property (retain) NSString *strDescription;
@property (retain) UIImage *image;

- (id)initWithId:(NSString *)Id;
- (id)copyWithZone:(NSZone *)zone;

@end
