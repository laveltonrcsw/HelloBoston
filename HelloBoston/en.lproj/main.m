//
//  main.m
//  HelloBoston
//
//  Created by LaVelton Carroway on 6/25/12.
//  Copyright (c) 2012 Rochee Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "rswcommon.h"
#include "cuda.h"
#include "cuda_runtime.h"

#ifdef __APPLE__
    #include <OpenGL/gl.h>  // Open Graphics Library (OpenGL) header
    #include <GLUT/glut.h>  // The GL Utility Toolkit (GLUT) Header
#else
    #include <GL/gl.h>      // Open Graphics Library (OpenGL) header
    #include <GL/glut.h>    // The GL Utility Toolkit (GLUT) Header
#endif

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

        NSArray *asciitable = [[NSArray alloc] initWithObjects:@" ",@"!",@"\"",@"#",@"$",@"%",@"&",@"`",@"(",@")",@"*",@"+",@",",@"_",@".",@"/",@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@":",@";",@"<",@"=",@">",@"?",@"@",@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z",@"[",@"\\",@"]",@"^",@"-",@"'",@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i",@"j",@"k",@"l",@"m",@"n",@"o",@"p",@"q",@"r",@"s",@"t",@"u",@"v",@"w",@"x",@"y",@"z",@"{",@"|",@"}",@"~",nil];

        NSArray *hextable = [[NSArray alloc] initWithObjects:@"20",@"21",@"22",@"23",@"24",@"25",@"26",@"27",@"28",@"29",@"2A",@"2B",@"2C",@"2D",@"2E",@"2F",@"30",@"31",@"32",@"33",@"34",@"35",@"36",@"37",@"38",@"39",@"3A",@"3B",@"3C",@"3D",@"3E",@"3F",@"40",@"41",@"42",@"43",@"44",@"45",@"46",@"47",@"48",@"49",@"4A",@"4B",@"4C",@"4D",@"4E",@"4F",@"50",@"51",@"52",@"53",@"54",@"55",@"56",@"57",@"58",@"59",@"5A",@"5B",@"5C",@"5D",@"5E",@"5F",@"60",@"61",@"62",@"63",@"64",@"65",@"66",@"67",@"68",@"69",@"6A",@"6B",@"6C",@"6D",@"6E",@"6F",@"70",@"71",@"72",@"73",@"74",@"75",@"76",@"77",@"78",@"79",@"7A",@"7B",@"7C",@"7D",@"7E",nil];

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
        for ( n = 1; n <= 200; n += ival )
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

        //Print The Ascii Table Array
        ival = 0;
        NSPrint(@"Ascii Table Count: %lu\n",[asciitable count]);
        for (id asciitableElement in asciitable)
        {
            NSPrint(@"%@\n",[asciitable objectAtIndex:ival]);
            ival+=1;
        }

        //Print The Hex Table Array
        ival = 0;
        NSPrint(@"Hex Table Count: %lu\n",[hextable count]);
        for (id hextableElement in hextable)
        {
            NSPrint(@"%@\n",[hextable objectAtIndex:ival]);
            ival+=1;
        }

        //Round Some Random Numbers
        NSPrint(@"Round Labor Hours: %f\n",round(2.0f * 0.50) / 2.0f);
        NSPrint(@"Round Labor Hours: %d\n",lround(0.50));


        //OpenGL Test Sample
        

        //[myFraction release];
        //[myFrac1 release];
        //[myFrac2 release];
        //[pool drain];
    }
    return 0;
}







