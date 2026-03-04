# CIRCULAR LINKED LIST

```c
#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node *next;
};

struct Node * traverse(struct Node *head) {
    struct Node *ptr = head;
    
    do {
        printf("%d\n", ptr->data);
    } while(ptr->next != head);

    return head;
}

struct Node * insertAtFirst(struct Node *head, int data) {
    struct Node *ptr = (struct Node *) malloc(sizeof(struct Node));
    ptr->data = data;    

    struct Node *p = head->next;
    while(p->next != head) {
        p = p->next;
    }
    //now ptr came at last node

    p->next = ptr;
    ptr->next = head;
    head = ptr;

    return head;
}

int main() {
    struct Node *head = (struct Node *) malloc(sizeof(struct Node));
    struct Node *second = (struct Node *) malloc(sizeof(struct Node));
    struct Node *third = (struct Node *) malloc(sizeof(struct Node));

    head->data = 7;
    head->next = second;

    second->data = 11;
    second->next = third;

    third->data = 77;
    third->next = head;
    

    // Calling Functions
    traverse(head);
    head = insertAtFirst(head);

    return 0;
}
```
