use std::option::Option;

pub struct QueueImplementWithTwoStack<T: Copy> {
    stack1: Vec<T>,
    stack2: Vec<T>,
}

impl<T: Copy> QueueImplementWithTwoStack<T> {
    pub fn new() -> QueueImplementWithTwoStack<T> {
        QueueImplementWithTwoStack {
            stack1: vec![],
            stack2: vec![],
        }
    }

    pub fn enqueue(&mut self, value: T) {
        self.stack1.push(value);
    }

    pub fn dequeue(&mut self) -> Option<T> {
        for _ in 0..self.stack1.len() {
            let item = self.stack1.pop();
            self.stack2.push(item.expect("NO DATA"));
        }

        let result = self.stack2.pop();

        for _ in 0..self.stack2.len() {
            let item = self.stack2.pop();
            self.stack1.push(item.expect("NO DATA"));
        }

        result
    }
}

#[test]
fn tests_enqueue_1_and_dequeue_1() {
    let mut target: QueueImplementWithTwoStack<i32> = QueueImplementWithTwoStack::new();

    target.enqueue(1);
    assert_eq!(1, target.dequeue().expect("No data"));

    target.enqueue(2);
    assert_eq!(2, target.dequeue().expect("No data"));

    target.enqueue(3);
    assert_eq!(3, target.dequeue().expect("No data"));
}

#[test]
fn tests_enqueue_3_and_dequeue_3() {
    let mut target: QueueImplementWithTwoStack<i32> = QueueImplementWithTwoStack::new();
    target.enqueue(1);
    target.enqueue(2);
    target.enqueue(3);

    assert_eq!(1, target.dequeue().expect("No data"));
    assert_eq!(2, target.dequeue().expect("No data"));
    assert_eq!(3, target.dequeue().expect("No data"));
}