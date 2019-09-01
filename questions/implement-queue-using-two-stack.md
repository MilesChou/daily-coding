# 使用兩個 stack 實作 queue

## 原文

Implement a queue class using two stacks. A queue is a data structure that supports the FIFO protocol (First in = first out). Your class should support the enqueue and dequeue methods like a standard queue.

Here's a starting point:

```
class Queue:
  def __init__(self):
    # Fill this in.
    
  def enqueue(self, val):
    # Fill this in.

  def dequeue(self):
    # Fill this in.

q = Queue()
q.enqueue(1)
q.enqueue(2)
q.enqueue(3)
print q.dequeue()
print q.dequeue()
print q.dequeue()
# 1 2 3
```

## 解答

* [Rust](/src/rust/src/implement_queue_using_two_stack.rs)
