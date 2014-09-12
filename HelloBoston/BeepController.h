#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>

@interface BeepController : NSObject <NSUserNotificationCenterDelegate>
- (IBAction)sendBeep:(id)sender;
@end

