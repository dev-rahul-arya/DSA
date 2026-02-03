#include <bits/stdc++.h>
using namespace std;

int main() {
	vector<int> list;     //advantage: can be resized on runtime
	list.push_back(1);    //[1]
	list.push_back(14);   //[1, 14]
	list.push_back(143);  //[1, 14, 143]
	list.pop_back();      //[1, 14]
	
	
	//VECTOR INITIALIZATION ::::::::::::::::::::::::::::::
	vector<int> vec = {1, 2};
	vector<int> vec1(3, 10);  // [10, 10, 10]
	vector<int> vec2(vec);    // [1, 2]


    //VECTOR PRINTING :::::::::::::::::::::::::::::::::::::
    cout << "Vector: ";
    for (int i = 0; i < list.size(); i++) cout << list[i] << " ";
    cout << endl << endl;
    
    
    //SIMPLE VECTOR FUNCTIONS :::::::::::::::::::::::::::::
    cout << "Size: " << list.size() << endl;            //currently holding
    cout << "Capacity: " << list.capacity() << endl;    //ability to hold
    cout << "First: " << list.front() << endl;          //first element
    cout << "Last: " << list.back() << endl;            //last element
    
    
    //COSTLY VECTOR FUNCTIONS ::::::::::::::::::::::::::::::
    // list.begin()                            //points at 0th index
    list.erase(list.begin() + 1);              //erase element at index (0+2)
    // list.erase(start, end);                 //inclusive of start, exclusive of end
    list.insert(list.begin() + 1, 100);        //(position, value)
    list.clear();                              //size -> 0 , capacity -> same
    list.empty();                              //true -> 1 , false -> 0
    
    
    //VECTOR ITERATORS ::::::::::::::::::::::::::::::::::::::
    /*
    [1, 2, 3, 4, 5] ---- elements
    [0, 1, 2, n-2, n-1] ----- index
    */
    
    cout << endl;
    cout << "Begin: " << *( vec.begin() ) << endl;         //0th element
    cout << "End(nth): " << *( vec.end() ) << endl;        //nth element (garbage)
    cout << "End(n-1 th): " << *( vec.end()-1 ) << endl;   //nth element (garbage)
    cout << endl;
    
    
    //Forward Iteration
    vector<int>::iterator it;
    
    cout << "Forward Iteration: ";
    for (it = vec.begin(); it != vec.end(); it++) {
        cout << *(it) << " ";
    }
    
    //Backward Iteration
    cout << endl;
    cout << "Backward Iteration: ";
    for (auto it = vec.rbegin(); it != vec.rend(); it++) {
        cout << *(it) << " ";
    }
}
