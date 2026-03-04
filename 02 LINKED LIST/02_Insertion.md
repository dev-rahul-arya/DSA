## INSERTION

- CASE 1: Insert at Begining.
- CASE 2: Insert in Between. (got position by traversing)
- CASE 3: Insert at End.
- CASE 4: Insert after a Node. (position is given)

```c
#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node *next;
};

struct Node * instertAtBegin(struct Node *head, int data) {
    struct Node *ptr = (struct Node *) malloc(sizeof(struct Node));
    
    ptr->next = head;
    head = ptr;

    return head;
}

struct Node * instertInBetween(struct Node *head, int data, int index) {
    struct Node *ptr = (struct Node *) malloc(sizeof(struct Node));

    int i = 0;
    struct Node *p = head; //temporary iterator for linked list
    while (i != index-1) {  //running till we get prev node index
        p = p->next;
        i++;
    }

    ptr->data = data;
    ptr->next = p->next;
    p->next = ptr;

    return head;
}

struct Node * instertAtEnd(struct Node *head, int data) {
    struct Node *ptr = (struct Node *) malloc(sizeof(struct Node));

    struct Node *p = head; //temporary iterator for linked list
    while (p->next != NULL) {  //running till we get last node index
        p = p->next;
    }

    ptr->data = data;
    p->next = ptr;
    ptr->next = NULL;

    return head;
}

struct Node * instertAfterNode(struct Node *prevNode, int data) {
    struct Node *ptr = (struct Node *) malloc(sizeof(struct Node));

    ptr->data = data;
    ptr->next = prevNode->next;
    prevNode->next = ptr;

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
    third->next = NULL;
    

    // Calling Functions
    head = insertAtFirst(head, 56);
    head = insertAtIndex(head, 56, 1);
    head = insertAtEnd(head, 56);
    head = insertAfterNode(second, 56);

    return 0;
}
```
