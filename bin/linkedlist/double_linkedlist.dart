void main() {
  final linkedList = DoubleLinkedList();
  linkedList.addNode(2);
  linkedList.addNode(21);
  linkedList.addNode(12);
  linkedList.addNode(22);
  linkedList.addNode(23);
  linkedList.addNode(222);
  linkedList.delete(222);
  linkedList.insert(3322, 22);
  linkedList.display();
}

class Node {
  int data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class DoubleLinkedList {
  Node? head;
  Node? tail;
  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void insert(int data, int toAdd) {
    final newNode = Node(data);
    Node? temp = head;

    // Find the node with the specified 'toAdd' value
    while (temp != null && temp.data != toAdd) {
      temp = temp.next;
    }

    if (temp == null) {
      // Node with 'toAdd' value not found, so just add the new node at the end
      addNode(data);
    } else {
      if (temp == tail) {
        // If 'toAdd' is the tail node, update the tail
        newNode.prev = tail;
        tail!.next = newNode;
        tail = newNode;
      } else {
        // Insert the new node between 'temp' and 'temp.next'
        newNode.next = temp.next;
        newNode.prev = temp;
        temp.next!.prev = newNode;
        temp.next = newNode;
      }
    }
  }

  void delete(
    int data,
  ) {
    Node? temp = head;
    if (temp == null) {
      return;
    }
    while (temp != null && temp.data != data) {
      temp = temp.next;
    }

    if (temp == head) {
      head = head?.next;
      if (head != null) {
        head?.prev = null;
      }
    } else if (temp == tail) {
      tail = tail?.prev;
      if (tail != null) {
        tail?.next = null;
      }
    }
    temp?.prev?.next = temp.next;
    temp?.next?.prev = temp.prev;
  }
}
