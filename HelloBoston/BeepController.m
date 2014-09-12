#import "BeepController.h"

@implementation BeepController
- (IBAction)sendBeep:(id)sender {
    //NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(notify) userInfo:nil repeats:NO];
    NSBeep();
}
-(void)notify{
    NSUserNotificationCenter *nc = [NSUserNotificationCenter defaultUserNotificationCenter];
    NSUserNotification *notification = [[NSUserNotification alloc]init];
    nc.delegate = self;
    notification.title = @"Hello World";
    notification.informativeText = @"How Are You Doing?";
    notification.subtitle = @"Notification :";
    [nc deliverNotification:notification];
}
@end
