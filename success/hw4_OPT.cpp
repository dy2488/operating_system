/********************
	> File Name: hw4_OPT.cpp
	> Author: dy2488
	> Mail: 1439433776@qq.com 
	> Created Time: 2021年05月12日 星期三 12时03分56秒
********************/

#include<bits/stdc++.h>
using namespace std;
int present(string table_frame[], int nf, string page)
{
	for(int i=0; i<nf; i++)
		if(page == table_frame[i])
			return 1;
	return 0;
}

void printtable(string table_frame[], int nf)
{
	for(int i=0; i<nf; i++)
	{
		if(table_frame[i] == "-1")
			printf("- ");
		else
			cout<<table_frame[i]<<" ";
	}
	printf("||");
}


int findpos(string table_frame[],int nf,string pages[],int curr,int np)
{
    int i,j;
    for(i=0;i<nf;i++)
    {
        if(table_frame[i] == "-1")
            return i;
    }

    int pos[nf];
	pos[nf]={
		0
	};

    for(i=0;i<nf;i++)
    {
        pos[i]=1e9;
        for(j=curr+1;j<np;j++)
        {
            if(pages[j]==table_frame[i])
            {
                pos[i]=j;
                break;
            }
        }
    }

    int max1=-1;
    int returnpos=-1;
    for(i=0;i<nf;i++)
    {
        if(pos[i]>max1)
        {
            max1=pos[i];
            returnpos=i;
        }
    }

    return returnpos;
}

int main()
{
    //nf-number of frames
    int n,nf,i;

    printf("enter number of frames\n");
    scanf("%d",&nf);
    string table_frame[nf];
    for(i=0;i<nf;i++)
    {
        table_frame[i]="-1";
    }

    printf("enter total number of page requests\n");
    scanf("%d",&n);
    string pages[n];
    printf("enter pages\n");
    for(i=0;i<n;i++)
    {
		cin>>pages[i];
    }

    int count1=0;
    printf("position of frame table after each request\n");
    for(i=0;i<n;i++)
    {
		cout<<"page table after request from"<<" "<<pages[i]<<"--->"<<"||";
        if(!present(table_frame,nf,pages[i]))
        {
             int pos = findpos(table_frame,nf,pages,i,n);
             table_frame[pos]=pages[i];

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
