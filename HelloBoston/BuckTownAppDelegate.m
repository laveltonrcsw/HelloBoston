//
//  BuckTownAppDelegate.m
//  BuckTown
//
//  Created by LaVelton R. Carroway on 03/06/2011.
//  Copyright 2011 Rochee Software. All rights reserved.
//

#import "BuckTownAppDelegate.h"

@implementation BuckTownAppDelegate

@synthesize window;
@synthesize sliderValue;
@synthesize levelValue;
@synthesize filterValue;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)sliderChanged:(id)sender {
    
    NSSlider *slider = (NSSlider *)sender;
    NSLevelIndicator *level = (NSLevelIndicator *)sender;
    
    int intProgressCount0 = (int)(slider.intValue + 0.5f);
    int intProgressCount1 = (int)(level.intValue + 0.5f);
    
    NSString *strProgressCount0 = [[NSString alloc] initWithFormat:@"%d", intProgressCount0];
    [sliderValue setTitleWithMnemonic:strProgressCount0];
    //[strProgressCount0 release];
    
    NSString *strProgressCount1 = [[NSString alloc] initWithFormat:@"%d", intProgressCount1];
    [levelValue  setStringValue:strProgressCount1];
    //[strProgressCount1 release];
    
}

- (void)dealloc {
    
    //[sliderValue release];
    //[levelValue release];
    //[filterValue release];
    //[super dealloc];
}

@end
