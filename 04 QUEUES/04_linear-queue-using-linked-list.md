# LINEAR QUEUE USING LINKED LIST

__Condition for Queue Empty:__ `front == NULL`\
__Condition for Queue Full:__ `n == NULL`

```c
#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node *next;
};

struct Node *front = NULL;
struct Node *rear = NULL;

void enqueue(struct Node *front, struct Node *rear, int val) {
    struct Node *n = (struct Node n *) malloc(sizeof(struct Node));
    
    if (n == NULL) {
        printf("Queue Full");  //if node creation fails
    }
    else {
        n->data = val;
        n->next = NULL;
        
        if (front == NULL) {  //means first element
            front = rear = n;
        }
        else {
            rear->next = n;
            rear = n;
        }
    }
}

void dequeue(struct Node *front, struct Node *rear) {
    struct Node *ptr = front;
    int val = -1;
    
    if (front == NULL) {
        printf("Queue Empty");
    }
    else {
        front = front->next;
        val =  ptr->data;
        free(ptr);
    }
    
    return val;
}

int main() {
    enqueue(&front, &rear, 42);
    enqueue(&front, &rear, 52);
    enqueue(&front, &rear, 62);
    enqueue(&front, &rear, 72);
    dequeue(&front, &rear);
    dequeue(&front, &rear);

    return 0;
}
```