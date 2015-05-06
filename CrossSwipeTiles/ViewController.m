//
//  ViewController.m
//  CrossSwipeTiles
//
//  Created by Burhan Ateeq on 5/5/15.
//  Copyright (c) 2015 ExperLabs. All rights reserved.
//

#import "ViewController.h"
#import "CrossSwipeControl/CrossSwipeViewController.h"
#import "CrossSwipeControl/Data.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    NSMutableArray * allData = [[NSMutableArray alloc] init];
    
    for (int i = 1; i <= 256; ++i)
    {
        Data* data = [[Data alloc] initWithId:[NSString stringWithFormat:@"%d", i]];
        [data setStrTitle:[NSString stringWithFormat:@"Title %d", i]];
        [data setStrDescription:[NSString stringWithFormat:@"Description %d", i]];
        
        [allData addObject:data];
    }
    [self setTileData:allData];

    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
