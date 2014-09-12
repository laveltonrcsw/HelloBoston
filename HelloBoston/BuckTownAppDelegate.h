//
//  BuckTownAppDelegate.h
//  BuckTown
//
//  Created by LaVelton R. Carroway on 03/06/2011.
//  Copyright 2011 Rochee Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BuckTownAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window01;
    NSTextField *sliderValue01;
    NSLevelIndicator *levelValue01;
    NSScrollView *filterValue01;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *sliderValue;
@property (assign) IBOutlet NSLevelIndicator *levelValue;
@property (assign) IBOutlet NSScrollView *filterValue;

- (IBAction)sliderChanged:(id)sender;

@end
