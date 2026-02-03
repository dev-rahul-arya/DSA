#include <bits/stdc++.h>
using namespace std;

int main() {
	int n;
	bool flag = true;
	cin >> n;
	
	for (int i = 1; i < n; i++) {
	    flag = (i%2 == 1)?true:false;
	    for (int j = 1; j <= i; j++) {
	        if (flag) cout << "1 ";
	        else cout << "0 ";
	        flag = !flag;
	    }
	    
	    cout<<endl;
	}
	
	
	/*
	
	OUTPUT:
    1 
    0 1 
    1 0 1 
    0 1 0 1 
    1 0 1 0 1 
	
	*/
}
