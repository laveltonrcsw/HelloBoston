//
//  rswutil.h
//  HelloRedCup
//
//  Created by LaVelton R. Carroway on 05/06/2014.
//  Copyright (c) 2014 Rochee Software, LLC. All rights reserved.
//

#ifndef HelloRedCup_rswutil_h
#define HelloRedCup_rswutil_h

const char *DoW[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
const char *MoY[] = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

struct RedCup
{
    float TopDiameter;
    float BottomDiameter;
    float Height;
    float *TopDiameterPtr;
    float *BottomDiameterPtr;
    float *HeightPtr;
};

struct RedCup myRedCup;

struct DateTime
{
    time_t curtime;
};

struct DateTime myDateTime;

#endif
