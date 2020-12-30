#include <stdio.h>
#include "isort.h"




void shift_element(int* arr,int i)
{
    int temp1=*arr;
    int temp2=0;
    int j=1;

    for ( j = 1; j<i+1; j++)
    {
        temp2=*(arr+j);
       *(arr+j)=temp1;
        temp1=temp2;
    }
    
}

void insertion_sort(int* arr,int len)
{

int i=1,j=1,counter=0, temp=0;

for ( i = 1; i < len; i++)
{
    j=i;
    counter=0;
    while ((*(arr+i)<*(arr+(j-1))) && j>0)
    {
        counter++;
        j--;
    }
    if(counter>0)
    {
        temp=*(arr+i);
        shift_element((arr+j),counter);
        *(arr+j)=temp;
    }

}

}
