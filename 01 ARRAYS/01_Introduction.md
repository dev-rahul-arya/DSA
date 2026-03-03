# ADT & ARRAYS

`Array`: Collections of elements accessible by an index. Used for faster retrieval and faster updation, but the problem is with insertion in between and deletion.

`ADT(Abstract Data Type)`: Minimal Requirement Functionality Template. Basically, Set of Values + Set of Operations.

`Abstraction`: Hiding details


```c
#include <stdio.h>
#include <stdlib.h>

struct myArray {
    int total_size;
    int used_size;
    int *ptr;
};

void createArray(strcut myArray *a, int tSize, Int uSize) {
    a->total_size = tsize;
    a->used_size = uSize;
    a->ptr = (int *) malloc(tSize * sizeof(int));
}

void show(struct myArray *a) {
    for (int i = 0; i < a->used_size; i++) {
        printf("%d\n", (a->ptr)[i]);
    }
}

void setVal(struct myArray *a, pos) {
    int n;
    printf("Enter Element: ");
    scanf("%d", &n);
    (a->ptr)[pos-1] = n;
}

int main() {
    struct myArray marks;
    createArray(&marks, 100, 20);

    show(&marks);  //garbage value
    setVal(&marks, 1);
    setVal(&marks, 2);
    show(&marks);  //new value

    return 0;
}
```
