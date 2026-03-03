# LINKED LIST

## CREATION & TRAVERSAL

```c
#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node *next;
};

void traverse(struct Node *ptr) {
    while (ptr != NULL) {    
        printf("%d ", ptr->data);
        ptr = ptr->next;
    }
}

int main() {
    // Allocate memory in Heap
    struct Node *head = (struct Node *) malloc(sizeof(struct Node));
    struct Node *second = (struct Node *) malloc(sizeof(struct Node));
    struct Node *third = (struct Node *) malloc(sizeof(struct Node));

    // Linking: First to Second
    head->data = 7;
    head->next = second;

    // Linking: Second to Third
    second->data = 11;
    second->next = third;

    // Linking: Third to NULL
    third->data = 77;
    third->next = NULL;

    // Prnting
    traverse(head);

    return 0;
}
```
