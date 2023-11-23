## Stacks and Queues ##

1. *Three in One*: Describe how you could use a single array to implement three stacks.

2. *Stack Min*: How would you design a stack which, in addition to push and pop, has a function min which returns the minimum element? Push, pop, and min should all operate in O(1) time.

3. *Stack of Plates*: Imagine a (literal) stack of plates. If the stack gets too high, it might topple. Therefore, in real life, we would likely start a new stack when the previous stack exceeds some threshold. Implement a data structure SetOfStacks that mimics this. SetOfStacks should be composed of several stacks and should create a new stack once the previous one exceeds capacity. SetOfStacks.push() and SetOfStacks.pop() should behave identically to a single stack (that is, pop() should return the same values as it would if there were just a single stack).

FOLLOW UP: Implement a function popAt(int index) which performs a pop operation on a specific sub-stack.

4. *Queue via Stacks*: Implement a MyQueue class which implements a queue using two stacks.

5. *Sort Stack*: Write a program to sort a stack such that the smallest items are on the top. You can use an additional temporary stack, but you may not copy the elements into any other data structure (such as an array). The stack supports the following operations: push, pop, peek, and isEmpty.

6. *Animal Shelter*: An animal shelter, which holds only dogs and cats, operates on a strictly "first in, first out" basis. People must adopt either the "oldest" (based on arrival time) of all animals at the shelter, or they can select whether they would prefer a dog or a cat (and will receive the oldest animal of that type). They cannot select which specific animal they would like. Create the data structures to maintain this system and implement operations such as enqueue, dequeueAny, dequeueDog, and dequeueCat. You may use the built-in LinkedList data structure.


## Trees and Graphs ##

1. *Route Between Nodes*: Given a directed graph, design an algorithm to find out whether there is a route between two nodes.

2. *Minimal Tree*: Given a sorted (increasing order) array with unique integer elements, write an algorithm to create a binary search tree with minimal height.

3. *List of Depths*: Given a binary tree, design an algorithm which creates a linked list of all the nodes at each depth (e.g., if you have a tree with depth D, you'll have D linked lists).

4. *Check Balanced*: Implement a function to check if a binary tree is balanced. For the purposes of this question, a balanced tree is defined to be a tree such that the heights of the two subtrees of any node never differ by more than one.

5. *Validate BST*: Implement a function to check if a binary tree is a binary search tree.

6. *Successor*: Write an algorithm to find the "next" node (i.e., in-order successor) of a given node in a binary search tree. You may assume that each node has a link to its parent.

7. *Build Order*: You are given a list of projects and a list of dependencies (which is a list of pairs of projects, where the second project is dependent on the first project). All of a project's dependencies must be built before the project is. Find a build order that will allow the projects to be built. If there is no valid build order, return an error.

```
EXAMPLE Input:
projects: a, b, c, d, e, f
dependencies: (a, d), (f, b), (b, d), (f, a), (d, c)
Output: F, e, a, b, d, c
```

8. *First Common Ancestor*: Design an algorithm and write code to find the first common ancestor of two nodes in a binary tree. Avoid storing additional nodes in a data structure. NOTE: This is not necessarily a binary search tree.

8. *BST Sequences*: A binary search tree was created by traversing through an array from left to right and inserting each element. Given a binary search tree with distinct elements, print all possible arrays that could have led to this tree.

```
EXAMPLE Input:
Output: {2, 1, 3}, {2, 3, 1}
```


## Recursive and Dynamic Programming ##

1. *Triple Step*: A child is running up a staircase with n steps and can hop either 1 step, 2 steps, or 3 steps at a time. Implement a method to count how many possible ways the child can run up the stairs.

2. *Robot in a Grid*: Imagine a robot sitting on the upper left corner of a grid with r rows and c columns. The robot can only move in two directions, right and down, but certain cells are "off limits" such that the robot cannot step on them. Design an algorithm to find a path for the robot from the top left to the bottom right.
[LeetCode](https://leetcode.com/problems/unique-paths-ii/)

3. *Magic Index*: A magic index in an array A[0...n-1] is defined to be an index such that A[i] = i. Given a sorted array of distinct integers, write a method to find a magic index, if one exists, in array A.
FOLLOW UP: What if the values are not distinct?

4. *Power Set*: Write a method to return all subsets of a set.

5. *Recursive Multiply*: Write a recursive function to multiply two positive integers without using the * operator. You can use addition, subtraction, and bit shifting, but you should minimize the number of those operations.

6. *Towers of Hanoi*: In the classic problem of the Towers of Hanoi, you have 3 towers and N disks of different sizes which can slide onto any tower. The puzzle starts with disks sorted in ascending order of size from top to bottom (i.e., each disk sits on top of an even larger one). You have the following constraints:

Only one disk can be moved at a time.
A disk is slid off the top of one tower onto another tower.
A disk cannot be placed on top of a smaller disk.
Write a program to move the disks from the first tower to the last using stacks.
Permutations without Dups: Write a method to compute all permutations of a string of unique characters.

7. *Permutations with Dups*: Write a method to compute all permutations of a string whose characters are not necessarily unique. The list of permutations should not have duplicates.
