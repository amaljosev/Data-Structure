class Node {
  dynamic data;
  Node? next;
  Node(this.data);
}

class Queue {
  Node? front;
  Node? rear;
  void enqueue(data) {
    final newNode = Node(data);
    if (front == null) {
      front = rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
  }

  void dequeue() {
    front = front!.next;
    if (front == null) {
      rear = null;
    }
  }

  void display() {
    Node? current = front;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
