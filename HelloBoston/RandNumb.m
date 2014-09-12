/*
 * rand: Generates 5 numbers using standard "srand()/rand()" function
 *
 * SAMPLE OUTPUT:
 *   rand[0]= 824522256
 *   rand[1]= 1360907941
 *   rand[2]= 1513675795
 *   rand[3]= 1046462087
 *   rand[4]= 253823980
 */

//#include <stdio.h>
//#include <stdlib.h>
//#include <time.h>
//#include <string.h>

#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

enum roman_numerals { I = 1, II = 2, III = 3, IV = 4, V = 5, VI = 6, VII = 7, VIII = 8, IX = 9, X = 10, L = 50, C = 100, D = 500, M = 1000 };
enum curr_month { January = 1, February = 2, March = 3, April = 4, May = 5, June = 6, July = 7, August = 8, September = 9, October = 10, November = 11, December = 12 };
enum curr_day { Monday = 1, Tuesday = 2, Wednesday = 3, Thursday = 4, Friday = 5, Saturday = 6, Sunday = 7 };

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	/* Simple "srand()" seed: just use "time()" */
	unsigned int iseed = (unsigned int)time(NULL);
	srand (iseed);

	/* Convert Random Seed To String */
	char filename [256];
	sprintf(filename, "%s%d", "", iseed);

	/* Now generate 5 pseudo-random numbers */
	int iNum;
	for (iNum=0; iNum<5; iNum++)
	{
		printf ("rand[%d]= %u\n", iNum, rand ());
	}
	printf("Random Seed = %s\n\n", filename);

	/* Misc. Stuff */
	char *MyMessage1 = "Date: 12-29-2010\n";
	char *MyMessage2 = "Welcome to Whizzle...\n\n";

	char *PlanetOfApes[] = {
		"http://hotfile.com/dl/90919314/7abeb4e/01.Planet.of.the.Apes.1968.TiMPE.AH.part1.rar.html\n",
		"http://hotfile.com/dl/90919322/f182d50/01.Planet.of.the.Apes.1968.TiMPE.AH.part2.rar.html\n",
		"http://hotfile.com/dl/90919317/e5ca996/01.Planet.of.the.Apes.1968.TiMPE.AH.part3.rar.html\n",
		"http://hotfile.com/dl/90919323/cb034da/01.Planet.of.the.Apes.1968.TiMPE.AH.part4.rar.html\n",
		"http://hotfile.com/dl/90919319/4433f77/01.Planet.of.the.Apes.1968.TiMPE.AH.part5.rar.html\n",
		"http://hotfile.com/dl/90919318/8b3e30e/01.Planet.of.the.Apes.1968.TiMPE.AH.part6.rar.html\n",
		"http://hotfile.com/dl/90919316/c18341a/01.Planet.of.the.Apes.1968.TiMPE.AH.part7.rar.html\n",
		"http://hotfile.com/dl/90919321/1751e60/01.Planet.of.the.Apes.1968.TiMPE.AH.part8.rar.html\n\n"
	};
    //int billy [5][3] = { 16, 2, 77, 40, 12071 };

	printf(MyMessage1,"@");
	printf(MyMessage2,"@");

	printf("...she ain't coming back no more!!!\n");
	printf("...down with the system!!!\n\n");

	printf(PlanetOfApes[0],"@");
	printf(PlanetOfApes[1],"@");
	printf(PlanetOfApes[2],"@");
	printf(PlanetOfApes[3],"@");
	printf(PlanetOfApes[4],"@");
	printf(PlanetOfApes[5],"@");
	printf(PlanetOfApes[6],"@");
	printf(PlanetOfApes[7],"@");

    [pool drain];
    return 0;
}
