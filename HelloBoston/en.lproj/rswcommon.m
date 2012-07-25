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
NSLog(@"%i/%i", numerator, denominator);
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
    va_list argList;
    va_start(argList, format);
    NSMutableString *content = [[NSMutableString alloc] initWithFormat:format arguments:argList];
    [content writeToFile: @"/dev/stdout" atomically: NO encoding:NSUTF8StringEncoding error:nil];
    va_end(argList);
}
