class CircularQueue {
  List<int> queue = [];
  int front = -1;
  int rear = -1;
  int size = 0;
  int capacity = 0;

  CircularQueue(int capacity) {
    this.capacity = capacity;
    queue = List<int>.filled(capacity, 0);
  }

  bool isFull() {
    return ((rear + 1) % capacity == front);
  }

  bool isEmpty() {
    return (front == -1);
  }

  void enqueue(int data) {
    if (isFull()) {
      print("Queue penuh! Tidak bisa enqueue $data");
      return;
    }
    if (isEmpty()) {
      front = 0;
    }
    rear = (rear + 1) % capacity;
    queue[rear] = data;
    print("Enqueued: $data");
  }

  int dequeue() {
    if (isEmpty()) {
      print("Queue kosong! Tidak bisa dequeue");
      return -1;
    }

    int data = queue[front];

    if (front == rear) {
      // Queue jadi kosong setelah dequeue
      front = -1;
      rear = -1;
    } else {
      front = (front + 1) % capacity;
    }
    print("Dequeued: $data");
    return data;
  }

  void printQueue() {
    if (isEmpty()) {
      print("Queue kosong");
      return;
    }

    print("Isi Queue:");
    int i = front;
    while (true) {
      print(queue[i]);
      if (i == rear) break;
      i = (i + 1) % capacity;
    }
  }
}

void main() {
  CircularQueue q = CircularQueue(5);

  q.enqueue(10);
  q.enqueue(20);
  q.enqueue(30);
  q.enqueue(40);
  q.enqueue(50);

  q.printQueue();

  q.dequeue();
  q.dequeue();

  q.printQueue();

  q.enqueue(60);
  q.enqueue(70);

  q.printQueue();
}
