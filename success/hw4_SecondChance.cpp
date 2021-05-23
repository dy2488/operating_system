/********************
	> File Name: HW4_SecondChance.cpp
	> Author: dy2488
	> Mail: 1439433776@qq.com 
	> Created Time: 2021年05月12日 星期三 12时05分41秒
********************/

#include<bits/stdc++.h>
using namespace std;
int present(string a[],int nf,string page,int rf_bit[])
{
    for(int i=0;i<nf;i++)
    {
        if(a[i]==page)
        {
          rf_bit[i]=1;
          return 1;
        }

    }
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


int main()
{
    int nf;
    cout<<"enter number of frames"<<endl;
    cin>>nf;
    string a[nf];
	int rf_bit[nf];
    for(int i=0;i<nf;i++)
    {
        a[i]="-1";
        rf_bit[i]=0;
    }

    int np;
    cout<<"enter number of pages"<<endl;
    cin>>np;
    string b[np];
    cout<<"enter page requests"<<endl;
    for(int i=0;i<np;i++)
    {
        cin>>b[i];
    }
    int pos=0,count1=0;

    for(int i=0;i<np;i++)
    {
		//printf("page table after request from %2d || ",b[i]);
		cout<<"page table after request from"<<" "<<b[i]<<"--->"<<"||";
        if(!present(a,nf,b[i],rf_bit))
        {
            //int pos=findpos(a,nf,b,i,np);
            pos=(pos+1)%nf;
            while(rf_bit[pos]==1)
            {
                rf_bit[pos]=0;
                pos=(pos+1)%nf;
            }

            a[pos]=b[i];
            printtable(a,nf);
            //printf("page fault\n");
			cout<<"F"<<endl;
            count1++;
            continue;
        }

        printtable(a,nf);
		//printf("\n");
		cout<<"S"<<endl;
    }

     printf("\nNumber of page faults : %d\n\n", count1);
}
