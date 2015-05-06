//
//  Data.h
//  CrossSwipeTiles
//
//  Created by Burhan Ateeq on 5/5/15.
//  Copyright (c) 2015 ExperLabs. All rights reserved.
//


#import "Data.h"

@implementation Data

@synthesize strId, strImageUrl, image, strTitle, strDescription;

- (id)initWithId:(NSString *)Id
{
    self.strId = Id;
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
    Data *copy = [[Data alloc] initWithId:self.strId];
    copy.strImageUrl = [[NSString alloc] initWithString:self.strImageUrl];
    copy.image = [[UIImage alloc] initWithCGImage:[self.image CGImage]];
    copy.strTitle = [[NSString alloc] initWithString:self.strTitle];
    copy.strDescription = [[NSString alloc] initWithString:self.strDescription];
    return copy;
}

@end
