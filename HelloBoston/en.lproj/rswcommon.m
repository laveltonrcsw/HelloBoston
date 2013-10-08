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
void NSPrint (NSString *format, ...)
{
    /*
     *** NSString Encoding ***
     NSASCIIStringEncoding
     NSNEXTSTEPStringEncoding
     NSJapaneseEUCStringEncoding
     NSUTF8StringEncoding
     NSISOLatin1StringEncoding
     NSSymbolStringEncoding
     NSNonLossyASCIIStringEncoding
     NSShiftJISStringEncoding
     NSISOLatin2StringEncoding
     NSUnicodeStringEncoding
     NSWindowsCP1251StringEncoding
     NSWindowsCP1252StringEncoding
     NSWindowsCP1253StringEncoding
     NSWindowsCP1254StringEncoding
     NSWindowsCP1250StringEncoding
     NSISO2022JPStringEncoding
     NSMacOSRomanStringEncoding
     NSUTF16StringEncoding
     NSUTF16BigEndianStringEncoding
     NSUTF16LittleEndianStringEncoding
     NSUTF32StringEncoding
     NSUTF32BigEndianStringEncoding
     NSUTF32LittleEndianStringEncoding
     NSProprietaryStringEncoding
     */

    va_list argList; //Hold Information About Variable Arguments
    va_start(argList, format); //Initialize A Variable Argument List (macro)
    NSMutableString *content = [[NSMutableString alloc] initWithFormat:format arguments:argList];
    [content writeToFile: @"/dev/stdout" atomically: NO encoding:NSASCIIStringEncoding error:nil];
    va_end(argList); //End Using Variable Argument List (macro)
}
-(NSString *)fileToString:(NSString *) filename
{
    NSString *result = @"This is a test function.";
    return result;
}
-(NSString *)hexToAscii:(NSString *) keyString
{
    NSString *newstr = @"";
    int pointer;

    for(int ival=0; ival<keyString.length;ival=+2)
    {
        pointer = [newstr characterAtIndex:ival]+[newstr characterAtIndex:ival+1];
    }
    return newstr;
}

//function HexToAscii(KeyString)
//{
//    var newstr='';
//    var pointer;
//
//    for(i=0;i<KeyString.length;i=i+2){
//        pointer=KeyString.charAt(i)+KeyString.charAt((i+1));
//        for(j=0;j<HexTable.length;j++){
//            if(pointer.toUpperCase()==HexTable[j])
//                newstr+=AsciiTable[j];
//        }
//    }
//    return newstr;
//}
//
//function AsciiToHex(KeyString)
//{
//    var newstr='';
//    var pointer;
//
//    for(i=0;i<KeyString.length;i++){
//        pointer=KeyString.charAt(i);
//
//        for(j=0;j<AsciiTable.length;j++){
//            if(pointer==AsciiTable[j])
//                newstr+=HexTable[j];
//        }
//    }
//    return newstr;
//}


@end