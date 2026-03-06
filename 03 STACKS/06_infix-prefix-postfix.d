# INFIX, PREFIX & POSTFIX

Notations to write an expression.

- Infix: <operand> <operator> <operand>
    - `a+b`, `a-b`, `p/q`, `x-4`
- Prefix: <operator> <operand> <operand>
    - `+ab`, `-xy`, `-pq`, `*pb`
- Postfix: <operand> <operand> <operator>
    - `ab+`, `xy-`, `pq*`, `mn/`

Q. Why?
Sol. Postfix is easy for evaluation by machine because of operator precendence.

- Infix: (A*(B+C)*D)
- Postfix: ABC+*D*

![prefix-postfix-converstion.png](prefix-postfix-converstion.png)

## IMPLEMENTATION PLAN

```c
char *infixToPostfix(char *infix) {
    struct Stack *sp = (struct Stack *) malloc(sizeof(struct Stack));  //init the stack
    
    char *postfix = (char *) malloc((strlen(infix)+1) * sizeof(char));
    int i = 0;  //infix tracker
    int j = 0;  //postfix tracker

    while (infix[i] != '\0') {
        if ( isOperator(infix[i]) ) {
            if ( precedence(infix[i]) > precedence(stackTop(sp)) ) {
                push(sp, infix[i]);
                i++;
            }
            else {
                postfix[j] = pop(sp);
                j++;
            }
        }
        else {
            postfix[j] = infix[i];
            i++;
            j++;
        }
    }

    // push remaining operators
    while ( !isEmpty(sp) ) {
        postfix[j] = pop(sp);
        j++;
    }

    // add null character to end
    postfix[j] = '\0';

    return 0;
}
```

## FULL CODE

```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Stack {
    int size;
    int top;
    char *arr;
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

void push(struct Stack* ptr, char data) {
    if (!isFull) {
        ptr->top++;
        ptr->arr[ptr->top] = data;
    }
    else {
        printf("Stack Overflow\n");
    }
}

char pop(struct Stack* ptr) {
    if (!isEmpty) {
        char val = ptr->arr[ptr->top];
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

char stackTop(struct stack *sp) {
    return sp->arr[sp->top];
}

int match(char a, char b) {
    if (a=='(' && b==')') {
        return 1;
    }
    if (a=='[' && b==']') {
        return 1;
    }
    if (a=='{' && b=='}') {
        return 1;
    }

    return 0;
}

int precendence(char ch) {
    if (c) {
        return 3;
    }
    if (ch== '+' || ch == '-') {
        return 2;
    }
    else {
        return 0;
    }
}

int isOperator(char ch) {
    if (ch== '+' || ch == '-' || ch== '+' || ch == '-') {
        return 1;
    }
    else {
        return 0;
    }
}

char *infixToPostfix(char *infix) {
    struct Stack *sp = (struct Stack *) malloc(sizeof(struct Stack));
    sp->size = 100;
    sp->top = -1;
    sp->arr = (char *) malloc( sp->size * sizeof(char) );
    
    char *postfix = (char *) malloc((strlen(infix)+1) * sizeof(char));
    int i = 0;  //infix tracker
    int j = 0;  //postfix tracker

    while (infix[i] != '\0') {
        if ( isOperator(infix[i]) ) {
            if ( precendence(infix[i]) > precedence(stackTop(sp)) ) {
                push(sp, infix[i]);
                i++;
            }
            else {
                postfix[j] = pop(sp);
                j++;
            }
        }
        else {
            postfix[j] = infix[i];
            i++;
            j++;
        }
    }

    // push remaining operators
    while ( !isEmpty(sp) ) {
        postfix[j] = pop(sp);
        j++;
    }

    // add null character to end
    postfix[j] = '\0';

    return postfix;
}

int main() {
    char *exp = "a-b+t/6";
    printf("Postfix is %s", infixtoPostfix(exp));
}
```
