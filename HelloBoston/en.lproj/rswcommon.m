//
//  rswcommon.m
//  
//
//  Created by LaVelton Carroway on 3/6/12.
//  Copyright (c) 2012 Rochee Software. All rights reserved.
//

#import "rswcommon.h"

@implementation rswcommon: NSObject
@end

@implementation Fraction: NSObject
-(void) print
{
NSPrint(@"%i/%i\n", numerator, denominator);
}

-(void) setNumerator: (int) n
{
    numerator = n;
}

-(void) setDenominator: (int) d
{
    denominator = d;
}
-(int) numerator
{
    return numerator;
}
-(int) denominator
{
    return denominator;
}
@end

void NSPrint (NSString *format, ...)
{
    va_list argList; //Hold Information About Variable Arguments
    va_start(argList, format); //Initialize A Variable Argument List (macro)
    NSMutableString *content = [[NSMutableString alloc] initWithFormat:format arguments:argList];
    [content writeToFile: @"/dev/stdout" atomically: NO encoding:NSUTF8StringEncoding error:nil];
    va_end(argList); //End Using Variable Argument List (macro)
}
