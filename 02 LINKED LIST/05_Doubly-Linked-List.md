## DOUBLY LINKED LIST

```c
#include<stdio.h>
#include<stdlib.h>

struct Node {
    int data;
    struct Node *prev;
    struct Node *next;
};

void traverse(struct Node *ptr) {
    while(ptr != NULL) {
        printf("%d ",ptr->data);
        ptr = ptr->next;
    }
}

struct Node* insertAtBegain(struct Node *head, int data) {
    struct Node *ptr = (struct Node *) malloc(sizeof(struct Node));

    ptr->data = data;
    ptr->prev = NULL;
    ptr->next = head;

    return ptr;
}

struct Node* insertAtIndex(struct Node *head, int data, int index) {
    struct Node *r = head->next;
    struct Node *ptr = (struct Node *) malloc(sizeof(struct Node));
    struct Node *q = head;

    ptr->data = data;
    int i=1;
    while (i != index-1){
        q = q->next;
        r = r->next;
        i++;
    }

    ptr->next = r;
    r->prev = ptr;
    q->next = ptr;
    ptr->prev = q;

    return head;
}

struct Node* insertAtEnd(struct Node *head, int data) {
    struct Node *q = head;
    struct Node *ptr = (struct Node *) malloc(sizeof(struct Node));
    
    ptr->data = data;
    while (q->next != NULL) {
        q = q->next;
    }
    q->next = ptr;
    ptr->prev = q;
    ptr->next = NULL;

    return head;
}

struct Node* deleteAtBegin(struct Node *head) {
    struct Node *ptr = head;
    head = head->next;
    free(ptr);

    return head;
}

struct Node* deleteAtIndex(struct Node *head, int index) {
    struct Node *pptr = head;
    struct Node *ptr = head->next;

    int i=1;
    while(i != index-1) {
        ptr = ptr->next;
        pptr = pptr->next;
        i++;
    }

    pptr->next = ptr->next;
    free(ptr);

    return head;
}

struct Node* deleteAtEnd(struct Node *head) {
    struct Node *pptr = head;
    struct Node *ptr = head->next;

    while (ptr->next != NULL) {
        ptr = ptr->next;
        pptr = pptr->next;
    }

    pptr->next = NULL;
    free(ptr);

    return head;
}

int main() {
    struct Node *head = (struct Node *) malloc(sizeof(struct Node));
    struct Node *n2 = (struct Node *) malloc(sizeof(struct Node));
    struct Node *n3 = (struct Node *) malloc(sizeof(struct Node));
    struct Node *n4 = (struct Node *) malloc(sizeof(struct Node));
    struct Node *n5 = (struct Node *) malloc(sizeof(struct Node));

    head->prev = NULL;
    head->data = 10;
    head->next = n2;

    n2->prev = head;
    n2->data = 20;
    n2->next = n3;

    n3->prev = n2;
    n3->data = 30;
    n3->next = n4;

    n4->prev = n3;
    n4->data = 40;
    n4->next = n5;

    n5->prev = n4;
    n5->data = 50;
    n5->next = NULL;

    traverse(head);

    head = insertAtBegain(head, 32);
    head = insertAtIndex(head, 64, 2);
    head = insertAtEnd(head, 128);
    head = deleteAtBegin(head);
    head = deleteAtIndex(head, 3);
    head = deleteAtEnd(head);
}
```
