//
//  main.m
//  HelloBoston
//
//  Created by LaVelton Carroway on 6/25/12.
//  Copyright (c) 2012 Rochee Software. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Fraction : NSObject
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

int main (int argc, const char * argv[])
{
    //NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    //myFraction = [Fraction alloc];
    //myFraction = [myFraction init];
    //myFraction = [[Fraction alloc] init];
    //Fraction *myFraction = [[Fraction alloc] init];
    
    Fraction *myFraction = [Fraction new]; //Skip extra typing of alloc & init.
    Fraction *myFrac1 = [[Fraction alloc] init];
    Fraction *myFrac2 = [[Fraction alloc] init];
    
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
    
    NSString *strParts = [[NSString alloc] initWithString:@"PS1|PS2|PS3|FS4"];
    NSArray *arparts = [strParts componentsSeparatedByString:@"|"];
    
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
    
    NSLog(@"Ex. 1 - Hello, Boston!");
    NSLog(@"Ex. 2 - The sum of 50 and 25 is %i",sum);
    NSLog(@"Ex. 3 - The sum of %i and %i is %i",value1, value2, sum);
    NSLog(@"Ex. 4 - The fraction is %i/%i",inum,idenom);
    NSLog(@"Ex. 5 - The value of myFraction is:");
    [myFraction print];
    NSLog(@"Ex. 6.1 - First fraction is:");
    [myFrac1 print];
    NSLog(@"Ex. 6.2 - Second fraction is:");
    [myFrac2 print];
    NSLog(@"Ex. 7 - The value of myFraction is: %i/%i", [myFraction numerator], [myFraction denominator]);
    NSLog(@"integerVar = %i", integerVar);
    NSLog(@"floatingVar = %f", floatingVar);
    NSLog(@"doubleVar = %e", doubleVar);
    NSLog(@"doubleVar = %g", doubleVar);
    NSLog(@"charVar = %c", charVar);
    result = a - b; //subtraction
    NSLog (@"Ex. 8 - a - b = %i", result);
    result = b * c; //multiplication
    NSLog (@"Ex. 9 - b * c = %i", result);
    result = a / c; //division
    NSLog (@"Ex. 10 - a / c = %i", result);
    result = a + b * c; //precedence
    NSLog (@"Ex. 11 - a + b * c = %i", result);
    NSLog (@"Ex. 12 - a * b + c * d = %i", a * b + c * d);
    NSLog (@"Ex. 13 - 6 + a1 / 5 * b1 = %i", 6 + a1 / 5 * b1);
    NSLog (@"Ex. 14a - a1 / b1 * b1 = %i", a1 / b1 * b1);
    NSLog (@"Ex. 14b - c1 / d1 * d1 = %f", c1 / d1 * d1);
    NSLog (@"Ex. 15 - -a1 = %i", -a1);
    NSLog (@"Ex. 16 - a2 %% b2 = %i", a2 % b2);
    NSLog (@"Ex. 17 - a2 %% c2 = %i", a2 % c2);
    NSLog (@"Ex. 18 - a2 %% d2 = %i", a2 % d2);
    NSLog (@"Ex. 19 - a2 / d2 * d2 + a2 %% d2 = %i", a2 / d2 * d2 + a2 % d2);
    i1 = f1; // floating to integer conversion
    NSLog (@"Ex. 20 - %f assigned to an int produces %i", f1, i1);
    f1 = i2; // integer to floating conversion
    NSLog (@"Ex. 21 - %i assigned to a float produces %f", i2, f1);
    f1 = i2 / 100; // integer divided by integer
    NSLog (@"Ex. 22 - %i divided by 100 produces %f", i2, f1);
    f2 = i2 / 100.0; // integer divided by a float
    NSLog (@"Ex. 23 - %i divided by 100.0 produces %f", i2, f2);
    f2 = (float) i2 / 100; // type cast operator
    NSLog (@"Ex. 24 - (float) %i divided by 100 produces %f", i2, f2);
    NSLog (@"Ex. 25 - The eighth triangular number is %i", triangularNumber);
    
    triangularNumber = 0;
    for ( n = 1; n <= 200; n += 1 )
    {
        triangularNumber += n;
    }
    NSLog (@"Ex. 26 - The 200th triangular number is %i", triangularNumber);
    
    NSLog (@"Ex. 27 - TABLE OF TRIANGULAR NUMBERS");
    NSLog (@" n  Sum from 1 to n");
    NSLog (@"--- ---------------");
    triangularNumber = 0;
    n = 1;
    while (n <= 10)
    {
        triangularNumber += n;
        NSLog (@" %-3i     %-3i", n, triangularNumber);
        n+=1;
    }
    
    //Print The ARCodes Array
    ival = 0;
    NSLog(@"ARCodes Count: %lu",[arcodes count]);
    for (id arcodesElement in arcodes)
    {
        NSLog(@"%@",[arcodes objectAtIndex:ival]);
        ival+=1;
    }
    
    //Print The ARParts Array
    ival = 0;
    NSLog(@"ARParts Count: %lu",[arparts count]);
    do 
    {
        NSLog(@"%@",[arparts objectAtIndex:ival]);
        ival+=1;
    } while (ival < [arparts count]);
    
    //[myFraction release];
    //[myFrac1 release];
    //[myFrac2 release];
    
    //[pool drain];
    
    return 0;
}

