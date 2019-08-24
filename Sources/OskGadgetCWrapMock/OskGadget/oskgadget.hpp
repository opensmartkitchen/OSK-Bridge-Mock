#ifndef OSKGADGET_HPP
#define OSKGADGET_HPP

#include <string>
#include <vector>

class OSKdevice;

class OSKgadget
{
public:
    OSKgadget();
    ~OSKgadget();
    
    // Data Members
    
    // Data Functions()
    float getScaleWeight();
    long getScaleLastTimestamp();
    
private:
    // Data Members
    std::string m_id;
    std::vector<OSKdevice*> m_device;
    
    // Data Members: Scale
    float scaleWeigth;
    int scaleTimestampIdx;
    // items

    // Data Functions()
    
};

#endif // OSKGADGET_HPP
