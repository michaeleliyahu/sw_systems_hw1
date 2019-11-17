#include "myMath.h"

double Pow(double x, int y)
{

    double temp = 1;
    for (int i = 0; i <y; i++)
    {
         temp = temp * x;
        
    }
    return temp ;
}

double Exp(int x)
{
    double e = 2.71828;
    
    double temp = 1;
    for (int i =0; i < x; i++)
    {
       temp = temp*e;
       
    }
    return temp ;
    
}