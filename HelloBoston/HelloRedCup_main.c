//
//  main.c
//  HelloRedCup
//
//  Created by LaVelton R. Carroway on 05/02/2014.
//  Copyright (c) 2014 Rochee Software, LLC. All rights reserved.
//

#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include "rswutil.h"

int main(int argc, const char * argv[])
{

    myRedCup.TopDiameter = 3.75;
    myRedCup.BottomDiameter = 2.50;
    myRedCup.Height = 4.75;
    myRedCup.TopDiameterPtr = &myRedCup.TopDiameter;
    myRedCup.BottomDiameterPtr = &myRedCup.BottomDiameter;
    myRedCup.HeightPtr = &myRedCup.Height;

    myDateTime.curtime = time(&myDateTime.curtime);
    struct tm *now = localtime(&myDateTime.curtime);

    int iVal = 0;
    char FCompany[] = "LaVelton";
    char sub1[30];

    do {
        printf("%c - %s\n", FCompany[iVal],FCompany);
        iVal+= 1;
    } while (iVal < 8);

    printf("\n");
    printf("My RedCup dimension's are T:%f, B:%f, and H:%f\n", myRedCup.TopDiameter, myRedCup.BottomDiameter, myRedCup.Height);
    printf("My RedCup dimension's memory locations are T:%p, B:%p, and H:%p\n", myRedCup.TopDiameterPtr, myRedCup.BottomDiameterPtr, myRedCup.HeightPtr);
    printf("Current Date & Time: %s\n", ctime(&myDateTime.curtime));
    printf("%i - %s\n", now->tm_wday, DoW[now->tm_wday]);
    printf("Full Date: %i - %s %i, %i\n", now->tm_mon, MoY[now->tm_mon], now->tm_mday, 1900+now->tm_year);
    printf("Full Time: %i:%i:%i\n", now->tm_hour, now->tm_min, now->tm_sec);

    strncpy(sub1, "THESTRINGHASNOSPACES", 15);
    printf("%s\n",sub1);

    strncpy(sub1, "THESTRINGHASNOSPACES"+15, 15);
    printf("%s\n",sub1);

    // strftime(FCompany,25,"%I:%M%p",now);
    // printf("%s\n", FCompany);
    // printf( "The current date/time is: %s", asctime(now));

    char cwd[1024];
    if (getcwd(cwd, sizeof(cwd)) != NULL)
        //fprintf(stdout, "Current working dir: %s\n", cwd);
        //printf("Current working dir: %s\n", cwd);
        perror("getcwd() error");
    else
        perror("getcwd() error");

    return 0;
}

//Full Date
//Full Time
//
//Day (Number)
//Day (Name)
//Month (Number)
//Month (Name)
//Year
//
//Hour
//Minute
//Second
