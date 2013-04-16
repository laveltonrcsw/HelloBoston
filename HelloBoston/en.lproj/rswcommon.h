//
//  rswcommon.h
//
//
//  Created by LaVelton Carroway on 3/6/12.
//  Copyright (c) 2012 Rochee Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

#define	VERSION		"1.10"

#define	ERR_FATAL	0		//Exit The Entire Application With A Popup Window
#define	ERR_DROP	1		//Print To Console And Disconnect From Application
#define	ERR_QUIT	2		//Not An Error, Just A Normal Exit

#define	PRINT_ALL		0   //Print For Everyone
#define PRINT_DEVELOPER	1	//Only Print When "Developer is 1"

#define IS_IPHONE ( [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"] ) //Check To See If iPhone
#define IS_IPOD   ( [[[UIDevice currentDevice ] model] isEqualToString:@"iPod touch"] ) //Check To See If iPod
#define IS_IPAD   ( [[[UIDevice currentDevice ] model] isEqualToString:@"iPad"] ) //Check To See If iPad
#define IS_HEIGHT_GTE_568 [[UIScreen mainScreen ] bounds].size.height >= 568.0f //Check To See If Screen Is Widescreen
#define IS_IPHONE_5 ( IS_IPHONE && IS_HEIGHT_GTE_568 ) //Check To See If iPhone 5

#define WIDTH_IPAD 1024
#define WIDTH_IPHONE_5 568
#define WIDTH_IPHONE_4 480
#define HEIGHT_IPAD 768
#define HEIGHT_IPHONE 320

enum roman_numerals { I = 1, II = 2, III = 3, IV = 4, V = 5, VI = 6, VII = 7, VIII = 8, IX = 9, X = 10, L = 50, C = 100, D = 500, M = 1000 };
enum curr_month { January = 1, February = 2, March = 3, April = 4, May = 5, June = 6, July = 7, August = 8, September = 9, October = 10, November = 11, December = 12 };
enum curr_day { Monday = 1, Tuesday = 2, Wednesday = 3, Thursday = 4, Friday = 5, Saturday = 6, Sunday = 7 };

@interface rswcommon: NSObject
{
}
@end

@interface Fraction: NSObject
{
    int numerator;
    int denominator;
}
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(NSString *) hexToAscii: (NSString *) keyString;
-(NSString *) fileToString: (NSString *) filename;
void NSPrint (NSString *format, ...);

@end
