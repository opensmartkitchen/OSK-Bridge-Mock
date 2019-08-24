#include "oskgadget.hpp"

OSKgadget::OSKgadget() 
{
    scaleWeigth = 2.2f; // :TODO:!!!: temporary test value of 2.2 pounds.
    scaleTimestampIdx = 0;
}

OSKgadget::~OSKgadget() {
    // nothing to shutdown yet.
}

// getScaleWeight
float OSKgadget::getScaleWeight() {
    if (scaleWeigth > 1.0f) {
        scaleWeigth = 0;
    }
    else {
        scaleWeigth = 2.2f; 
    }
    
    return scaleWeigth;
}

int mockTimestampArray[] = {
    1566679707,
    1566679708,
    1566679728,
    1566679729,
    1566679735,
    1566679736,
    1566679742,
    1566679743
};

// getScaleTimestamp
long OSKgadget::getScaleLastTimestamp() {
    scaleTimestampIdx = scaleTimestampIdx + 1;
    if (scaleTimestampIdx > 7) {
        scaleTimestampIdx = 0;
    }
    
    return mockTimestampArray[scaleTimestampIdx];
}
