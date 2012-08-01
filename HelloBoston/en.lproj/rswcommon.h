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

#define	ERR_FATAL	0		//Exit The Entire Application With A Popup Window
#define	ERR_DROP	1		//Print To Console And Disconnect From Application
#define	ERR_QUIT	2		//Not An Error, Just A Normal Exit

#define	PRINT_ALL		0
#define PRINT_DEVELOPER	1	//Only Print When "Developer 1"

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

