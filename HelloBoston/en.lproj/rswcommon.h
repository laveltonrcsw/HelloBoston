//
//  rswcommon.h
//  
//
//  Created by LaVelton Carroway on 3/6/12.
//  Copyright (c) 2012 Rochee Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

#define	VERSION		"1.00"

#define	ERR_FATAL	0		// exit the entire application with a popup window
#define	ERR_DROP	1		// print to console and disconnect from application
#define	ERR_QUIT	2		// not an error, just a normal exit

#define	PRINT_ALL		0
#define PRINT_DEVELOPER	1	// only print when "developer 1"

void NSPrint (NSString *format, ...);

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
@end

