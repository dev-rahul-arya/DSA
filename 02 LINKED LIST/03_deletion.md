## DELETION

- CASE 1: Deleting at First Node.
- CASE 2: Delete a Node in Between. (got position by traversing)
- CASE 3: Delete the Last Node.
- CASE 4: Delete a Node with given node. (position is given)

```c
#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node *next;
};

struct Node * deleteAtFirst(struct Node *head) {
    struct Node *ptr = head;
    
    head = head->next;
    free(ptr);

    return head;
}

struct Node * deleteAtIndex(struct Node *head, int index) {
    struct Node *pptr = head;
    struct Node *ptr = head->next;
    
    for (int i = 0; i < index-1; i++) {
        pptr = pptr->next;
        ptr = ptr->next;
    }

    pptr->next = ptr->next;
    free(ptr);

    return head;
}

struct Node * deleteAtEnd(struct Node *head) {
    struct Node *pptr = head;
    struct Node *ptr = head->next;
    
    while (ptr != NULL) {
        pptr = pptr->next;
        ptr = ptr->next;
    }

    pptr->next = NULL;
    free(ptr);

    return head;
}

struct Node * deleteAfterNode(struct Node *prevNode) {
    struct Node *pptr = prevNode;
    struct Node *ptr = ptr->next;

    pptr->next = ptr->next;
    free(ptr);

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
    head = deleteAtFirst(head);
    head = deleteAtIndex(head, 1);
    head = deleteAtEnd(head);
    head = deleteAfterNode(second, 56);

    return 0;
}
```
