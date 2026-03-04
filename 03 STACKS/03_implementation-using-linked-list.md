# IMPLEMENTATION OF STACKS USING LINKED LIST

- `HEAD` will be used for `Push` and `Pop` operations.
- `HEAD` is now reffered as `Top`.
- Stack Empty: `top == NULL`.
- Stack Full: Heap memory is exhausted -> `ptr == NULL`.

## PSEUDOCODE

### isEmpty()

```c
int isEmpty() {
    if (top == NULL) {
        return 1;
    }
    else {
        return 0;
    }
}
```

### isFull()

```c
struct Node *n = (struct Node *) malloc (sizeof(struct Node));

if (n == NULL) {
    return 1;
}
else {
    return 0;
}
```

### push(x)

```c
struct Node *n = (struct Node *) malloc(sizeof(struct Node));

if (!isFull) {
    n->data = x;
    n->next = top;
    top = n;
}
else {
    printf("Stack Overflow");
}
```

### pop()

```c
if(!isEmpty) {
    struct Node *n = top;
    top = top->next;

    int x = n->data;
    free(n);
    
    return x;
}
else {
    printf("Stack Underflow");
}
```

### peek(int pos)

```c
struct Node *ptr = top;

for (int i = 0; ( i<pos-1 && ptr!=NULL ); i++) {
    ptr = ptr->next;
}

if (ptr != NULL) {
    return ptr->data;
}
return -1;
```

### stackTop()

```c
int stackTop() {
    return top->data;
}
```

### stackBottom()

```c
struct Node *ptr = top;

while (ptr != NULL) {
    ptr = ptr->next;
}

return ptr->data;
```

## FULL CODE

```c
#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node next;
};

// Global Declaration
// struct Node *top = NULL;

int isEmpty(struct Node *top) {
    if (top == NULL) {
        return 1;
    }

    return 0;
}

int isFull(struct Node *top) {
    struct Node *ptr = (struct Node *) malloc (sizeof(struct Node));

    if (ptr == NULL) {
        return 1;
    }
    
    return 0;
}

struct Node * push(struct Node *top, int data) {
    struct Node *ptr = (struct Node *) malloc(sizeof(struct Node));

    if ( !isFull(top) ) {
        ptr->data = x;
        ptr->next = top;
        top = ptr;
    }
    else {
        printf("Stack Overflow");
    }
}

struct Node * pop(struct Node **top) {
    if( !isEmpty(*top) ) {
        struct Node *ptr = *top;
        *top = (*top)->next;

        int x = ptr->data;
        free(ptr);
    
        return x;
    }
    else {
        printf("Stack Underflow");
    }
}

int peek (struct Node *top, int pos) {
    struct Node *ptr = top;

    for (int i = 0; ( i<pos-1 && ptr!=NULL ); i++) {
        ptr = ptr->next;
    }

    if (ptr != NULL) {
        return ptr->data;
    }
    return -1;
}

int stackTop(struct Node *top) {
    return top->data;
}

int stackBottom(struct Node *top) {
    struct Node *ptr = top;

    while (ptr != NULL) {
        ptr = ptr->next;
    }

    return ptr->data;
}

int main() {
    // Local Declaration
    struct Node *top = NULL;

    top = push(top, 70);
    top = push(top, 770);
    top = push(top, 7770);
    top = push(top, 7770);


    int element = pop(&top);  //but if you make stack a global variable-> no need of this.
    printf("Popped Element: %d\n" element);

    printf("Value at position 1: %d", peek(top));
    printf("Top Element: %d", stackTop(top));
    printf("Bottom Element: %d", stackBottom(top));

    return 0;
}
```
