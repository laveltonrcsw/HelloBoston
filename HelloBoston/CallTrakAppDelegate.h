//
//  CallTrakAppDelegate.h
//  CallTrak
//
//  Created by LaVelton R. Carroway on 05/27/2011.
//  Copyright 2011 Rochee Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CallTrakAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window02;
    NSPersistentStoreCoordinator *__persistentStoreCoordinator;
    NSManagedObjectModel *__managedObjectModel;
    NSManagedObjectContext *__managedObjectContext;
}

@property (assign) IBOutlet NSWindow *window;

@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:sender;

@end
