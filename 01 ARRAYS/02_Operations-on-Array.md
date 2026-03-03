# OPERATIONS ON ARRAY

- `Traversal`: Visiting every element of an array.
- `Insertion`: 
- `Deletion`: 
- `Searching`: 
- `Sorting`: 

## BASIC OPERATIONS

```c
#include <stdio.h>
#include <stdlib.h>

void display(int arr[], int n) {
    for (int i = 0; i < n; i++) {
        printf("%d\n", arr[i]);
    }
}

int insertion(int arr[], int *size, int element, int capacity, int index) {
    if (size >= capacity) {
        return -1;
    }

    //shifting elements
    for (int i = size-1; i >= index; i--) {
        arr[i+1] = arr[i];
    }

    //inserting element
    arr[index] = element;
    size++;
    return 1;
}

int deletion(int arr[], int *size, int element, int capacity, int index) {
    if (index >= capacity) {
        return -1;
    }

    //shifting elements
    for (int i = index; i < size-1; i++) {
        arr[i] = arr[i+1];
    }

    //deleting element
    size--;
    return 1;
}

int main() {
    int arr[100] = {2, 4, 6, 8};
    display(arr, 4);

    int size = 4, element = 45, index = 3;
    insertion(arr, &size, element, capacity, index);
    display(arr, 5);

    size = 5;
    deletion(arr, &size, element, capacity, index);
    display(arr, 5);

    return 0;
}
```

## SEARCHING ALGORITHMS

```c
#include <stdio.h>
#include <stdlib.h>

int linearSearch(int arr[], int size, int element) {
    for (int i = 0; i < n; i++) {
        if (arr[i] == element) {
            return 1;
        }
    }
    return -1;
}

int binarySearch (int arr[], int size, int element) {
    int low, mid, high;
    low = 0;
    high = size-1;
    mid = (low+high)/2;

    while (low <= high) {
        if (arr[mid] == element) {
            return mid;
        }
        if (arr[mid] < element) {
            low = mid + 1;  //optimization: bcz not found at mid
        }
        if (arr[mid] > element) {
            high = mid - 1;
        }
    }

    //not found
    return -1;
}

int main() {
    int arr[100] = {2, 4, 6, 8};
    int searchIndex;

    searchIndex = linearSearch(arr, 4, 6);
    printf("Found at %d", searchIndex);

    //use only and only if array is sorted
    searchIndex = binarySearch(arr, 4, 6);
    printf("Found at %d", searchIndex);

    return 0;
}
```

Time Complexity:-
- Linear: O(n)
- Binary: O(log n)
