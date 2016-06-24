#include <iostream>

using namespace std;

int main(void)
{
    int A[] = {1, 2, 3, 5, 4, 7, 9, 5,6, 10, 13, 15, 17, 18};

    int l = sizeof(A)/sizeof(A[0]);
    int pos = 0;

    for(int i=0; i<l; i++)
        cout << A[i] << " ";

    cout << endl;

    int maxsum = A[0], tempsum = A[0];

    for(int i=pos; i<l; i++)
    {
        if(A[i+1] == A[i]+1)
        {
            tempsum = tempsum + A[i+1];
            pos = i;
            continue;
        }

        if(tempsum>maxsum)
            maxsum = tempsum;

        tempsum = A[i+1];

    }

    cout << "MaxSum: " << maxsum << " At position: " << pos << endl;
}
