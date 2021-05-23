/********************
	> File Name: hw4_FIFO.cpp
	> Author: dy2488
	> Mail: 1439433776@qq.com 
	> Created Time: 2021年05月12日 星期三 11时59分42秒
********************/

#include<bits/stdc++.h>
#include <iostream>
using namespace std;
bool present(string table_frame[], int nf, string page)
{
	for(int i=0; i<nf; i++)
		if(page == table_frame[i])
			return true;
	return false;
}

void printtable(string table_frame[], int nf)
{
	for(int i=0; i<nf; i++)
	{
		if(table_frame[i] == "-1")
			cout<<"- ";
		else
			cout<<table_frame[i]<<" ";
	}
	cout<<"||";
	
}


int main()
{
    //nf-number of frames
    int n,nf,i,pos=0;

	cout<<"enter number of frames"<<endl;
    scanf("%d",&nf);
    string table_frame[nf];
    for(i=0;i<nf;i++)
    {
        table_frame[i]="-1";
    }

	cout<<"enter total number of page requests"<<endl;
    scanf("%d",&n);
    //int pages[n];
	string pages[n];
	cout<<"enter reference string"<<endl;
    for(i=0;i<n;i++)
    {
		cin>>pages[i];
    }

    int count1=0;
	cout<<"position of frame table after each request"<<endl;
    for(i=0;i<n;i++)
    {
		cout<<"page table after request from"<<" "<<pages[i]<<"--->"<<"||";
        if(!present(table_frame,nf,pages[i]))
        {
           table_frame[pos] = pages[i];
           pos = (pos+1)%nf ;//considering it as a queue
           printtable(table_frame,nf);
		   cout<<"F"<<endl;
           count1++;
           continue;
        }

        printtable(table_frame,nf);
		cout<<"S"<<endl;

    }
    printf("\nNumber of page faults : %d\n\n", count1);
}
