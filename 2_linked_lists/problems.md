5. *Sum Lists*: You have two numbers represented by a linked list, where each node contains a single digit. The digits are stored in reverse order, such that the Vs digit is at the head of the list. Write a function that adds the two numbers and returns the sum as a linked list.

```
EXAMPLE
Input: (7-> 1 -> 6) + (5 -> 9 -> 2).That is,617 + 295.
Output: 2 -> 1 -> 9. That is, 912.
```
6.  Suppose the digits are stored in forward order. Repeat the above problem.

```
EXAMPLE
Input: (6 -> 1 -> 7) + (2 -> 9 -> 5).Thatis,617 + 295
Output:9 -> 1 -> 2,Thatis,912.
```


7. *Palindrome*: Implement a function to check if a linked list is a palindrome.
8.  *Intersection*; Given two (singly) linked lists, determine if the two lists intersect. Return the inter- secting node. Note that the intersection is defined based on reference, not value. That is, if the kth node of the first linked list is the exact same node (by reference) as the j t h node of the second linked list, then they are intersecting.
9. *Loop Detection*: Given a circular linked list, implement an algorithm that returns the node at the beginning of the loop.

```
DEFINITION
Circular linked list: A (corrupt) linked list in which a node's next pointer points to an earlier node, so as to make a loop in the linked list.
```

```
EXAMPLE
Input: A->8->C->D->E-> C[thesameCasearlier] Output: C
Hints: #50, #69, #83, #90
```
