#include <bits/stdc++.h>
using namespace std;

int main() {
	int n;
	cin >> n;
	
	for (int i = 1; i <= n; i++) {
	    for (int j = 1; j <= i; j++) {
	        if (j == n) cout << n; //remove extra space
	        else cout << j << " ";
	    }
	    
	    
	    for (int j = 1; j <= n-i; j++) {
	        if (j == n-i) cout << "   "; //compensate line 10
	        else cout << "    ";
	    }
	    
	    
	    for (int j = i; j >= 1; j--) {
	        cout << " " << j;
	    }
	    
	    cout<<endl;
	}
	
	
	/*
	
	OUTPUT:
    1             1
    1 2         2 1
    1 2 3     3 2 1
    1 2 3 4 4 3 2 1 
	
	*/
}
