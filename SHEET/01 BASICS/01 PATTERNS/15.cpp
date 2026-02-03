#include <bits/stdc++.h>
using namespace std;

int main() {
	int n;
	cin >> n;
	
	for (int i = n; i >= i; i--) {
	    char alph = 'A';
	    for (int j = 1; j <= i; j++) {
	        cout << alph << " ";
	        alph++;
	    }
	    
	    cout<<endl;
	}
	
	
	/*
	
	OUTPUT:
    A B C D E 
    A B C D 
    A B C 
    A B 
    A 
	
	*/
}
