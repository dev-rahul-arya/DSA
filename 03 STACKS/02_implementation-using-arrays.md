# STACK IMPLEMENTATION - PART 1

## USING ARRAY

```c
#include <stdio.h>
#include <stdlib.h>

struct Stack {
    int size;
    int top;
    int *arr;
};

int isEmpty(struct Stack* ptr) {
    if (ptr->top == -1) {
        return 1;
    }
    else {
        return 0;
    }
}

int isFull(struct Stack* ptr) {
    if (ptr->top == ptr->size-1) {
        return 1;
    }
    else {
        return 0;
    }
}

void push(struct Stack* ptr, int data) {
    if (!isFull) {
        ptr->top++;
        ptr->arr[ptr->top] = data;
    }
    else {
        printf("Stack Overflow\n");
    }
}

int pop(struct Stack* ptr) {
    if (!isEmpty) {
        int val = ptr->arr[ptr->top];
        ptr->top = ptr->top-1;

        return val;
    }
    else {
        printf("Stack Empty/Underflow\n");
        return -1;
    }
}

int peek(struct Stack* ptr, int position) {
    //returns last element 'top-position-1' first because of LIFO

    if (ptr -> top-position-1 > 0) {
        return ptr->arr[ptr -> top-position+1];
    }
    else {
        printf("Position doesn't exist\n");
        return -1;
    }
}

int main() {
    // struct Stack s;
    // s.size = 80;
    // s.top = -1;
    // s.arr = (int *) malloc(s.size * sizeof(int));

    // Better Method
    struct Stack *s1 (struct Stack *) malloc(sizeof(struct Stack));
    s1->size = 80;
    s1->top = -1;
    s1->arr = (int *) malloc(s1->size * sizeof(int));
}
```


