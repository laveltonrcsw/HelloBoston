//
//  main.m
//  HelloBoston
//
//  Created by LaVelton Carroway on 6/25/12.
//  Copyright (c) 2012 Rochee Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "rswcommon.h"

int main (int argc, const char * argv[])
{
    @autoreleasepool 
    {
        //NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
        //myFraction = [Fraction alloc];
        //myFraction = [myFraction init];
        //myFraction = [[Fraction alloc] init];
        //Fraction *myFraction = [[Fraction alloc] init];
        
        Fraction *myFraction = [[Fraction alloc] init];
        Fraction *myFrac1 = [Fraction new]; //Skip extra typing of alloc & init.
        Fraction *myFrac2 = [Fraction new]; //Skip extra typing of alloc & init.
        
        int value1, value2, sum, inum, idenom, ival;
        int integerVar = 100;
        float floatingVar = 331.79;
        double doubleVar = 8.44e+11;
        char charVar = 'W';
        int a = 100;
        int b = 2;
        int c = 25;
        int d = 4;
        int result;
        int a1 = 25;
        int b1 = 2;
        float c1 = 25.0;
        float d1 = 2.0;
        int a2 = 25;
        int b2 = 5;
        int c2 = 10;
        int d2 = 7;
        float f1 = 123.125, f2;
        int i1, i2 = -150;
        int n, triangularNumber;
        triangularNumber = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8;
        
        NSArray *arcodes = [[NSArray alloc] initWithObjects:@"FS1",@"FS2",@"FS3",@"FS4",@"FS5",nil];
        NSString *strParts = @"PS1|PS2|PS3|FS4";
        NSArray *arparts = [NSArray new];
        
        arparts = [strParts componentsSeparatedByString:@"|"];
        
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        [myFrac1 setNumerator: 2];
        [myFrac1 setDenominator: 3];
        
        [myFrac2 setNumerator: 3];
        [myFrac2 setDenominator: 7];
        
        value1 = 50;
        value2 = 25;
        sum = value1+value2;
        inum = 1;
        idenom = 3;
        ival = 1;
        
        NSPrint(@"Ex. 1 - Hello, Boston!\n");
        NSPrint(@"Ex. 2 - The sum of 50 and 25 is %i\n",sum);
        NSPrint(@"Ex. 3 - The sum of %i and %i is %i\n",value1, value2, sum);
        NSPrint(@"Ex. 4 - The fraction is %i/%i\n",inum,idenom);
        NSPrint(@"Ex. 5 - The value of myFraction is: ");
        [myFraction print];
        NSPrint(@"Ex. 6.1 - First fraction is: ");
        [myFrac1 print];
        NSPrint(@"Ex. 6.2 - Second fraction is: ");
        [myFrac2 print];
        NSPrint(@"Ex. 7 - The value of myFraction is: %i/%i\n", [myFraction numerator], [myFraction denominator]);
        NSLog(@"integerVar = %i\n", integerVar);
        NSLog(@"floatingVar = %f\n", floatingVar);
        NSLog(@"doubleVar = %e\n", doubleVar);
        NSLog(@"doubleVar = %g\n", doubleVar);
        NSLog(@"charVar = %c", charVar);
        result = a - b; //subtraction
        NSPrint(@"Ex. 8 - a - b = %i\n", result);
        result = b * c; //multiplication
        NSPrint(@"Ex. 9 - b * c = %i\n", result);
        result = a / c; //division
        NSPrint(@"Ex. 10 - a / c = %i\n", result);
        result = a + b * c; //precedence
        NSPrint(@"Ex. 11 - a + b * c = %i\n", result);
        NSPrint(@"Ex. 12 - a * b + c * d = %i\n", a * b + c * d);
        NSPrint(@"Ex. 13 - 6 + a1 / 5 * b1 = %i\n", 6 + a1 / 5 * b1);
        NSPrint(@"Ex. 14a - a1 / b1 * b1 = %i\n", a1 / b1 * b1);
        NSPrint(@"Ex. 14b - c1 / d1 * d1 = %f\n", c1 / d1 * d1);
        NSPrint(@"Ex. 15 - -a1 = %i\n", -a1);
        NSPrint(@"Ex. 16 - a2 %% b2 = %i\n", a2 % b2);
        NSPrint(@"Ex. 17 - a2 %% c2 = %i\n", a2 % c2);
        NSPrint(@"Ex. 18 - a2 %% d2 = %i\n", a2 % d2);
        NSPrint(@"Ex. 19 - a2 / d2 * d2 + a2 %% d2 = %i\n", a2 / d2 * d2 + a2 % d2);
        i1 = f1; // floating to integer conversion
        NSPrint(@"Ex. 20 - (%f) assigned to an int produces %i\n", f1, i1);
        f1 = i2; // integer to floating conversion
        NSPrint(@"Ex. 21 - (%i) assigned to a float produces %f\n", i2, f1);
        f1 = i2 / 100; // integer divided by integer
        NSPrint(@"Ex. 22 - (%i) divided by 100 produces %f\n", i2, f1);
        f2 = i2 / 100.0; // integer divided by a float
        NSPrint(@"Ex. 23 - (%i) divided by 100.0 produces %f\n", i2, f2);
        f2 = (float) i2 / 100; // type cast operator
        NSPrint(@"Ex. 24 - (float) %i divided by 100 produces %f\n", i2, f2);
        NSPrint(@"Ex. 25 - The eighth triangular number is %i\n", triangularNumber);
        
        triangularNumber = 0;
        for ( n = 1; n <= 200; n += 1 )
        {
            triangularNumber += n;
        }
        NSPrint(@"Ex. 26 - The 200th triangular number is %i\n", triangularNumber);
        
        NSPrint(@"Ex. 27 - TABLE OF TRIANGULAR NUMBERS\n");
        NSPrint(@" n  Sum from 1 to n\n");
        NSPrint(@"--- ---------------\n");
        triangularNumber = 0;
        n = 1;
        while (n <= 10)
        {
            triangularNumber += n;
            NSPrint(@" %-3i     %-3i\n", n, triangularNumber);
            n+=1;
        }
        
        //Print The ARCodes Array
        ival = 0;
        NSPrint(@"ARCodes Count: %lu\n",[arcodes count]);
        for (id arcodesElement in arcodes)
        {
            NSPrint(@"%@\n",[arcodes objectAtIndex:ival]);
            ival+=1;
        }
        
        //Print The ARParts Array
        ival = 0;
        NSPrint(@"ARParts Count: %lu\n",[arparts count]);
        do 
        {
            NSPrint(@"%@\n",[arparts objectAtIndex:ival]);
            ival+=1;
        } while (ival < [arparts count]);
        
        //Print RSWCommon Header File Version Number
        NSPrint(@"RSWCommon Version: %s\n",VERSION);
        
        //NSPrint(@"Hello World\n");
        NSPrint(@"Hello %@ %@\n", @"World", @"2012");
        
        //[myFraction release];
        //[myFrac1 release];
        //[myFrac2 release];
        
        //[pool drain];
    }
    return 0;
}

