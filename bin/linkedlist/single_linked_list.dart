void main(){
  final linkedList=SingleLinkedList();
  linkedList.addNode(5);
  linkedList.addNode(15);
  linkedList.addNode(55);
  linkedList.addNode(510);
  linkedList.addNode(85);
  linkedList.delete(510);
  linkedList.insert(15,14785);
  linkedList.display();
}
class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class SingleLinkedList {
  Node? head;
  Node? tail;
  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void delete(int data) {
    Node? temp = head, prev;
    if (temp != null && temp.data == data) {
      head = temp.next;
    }
    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }
    if (temp == tail) {
      tail = prev;
      tail?.next = null;
      return;
    }
    prev?.next = temp?.next;
  }

void insert(int toAdd, int data) {
  Node addNew = Node(data);
  Node? temp = head;
  Node? prev;

  // Find the node with the value 'toAdd' in the linked list
  while (temp != null && temp.data != toAdd) {
    prev = temp;
    temp = temp.next;
  }

  // If 'toAdd' is not found and 'prev' is null, it means 'toAdd' should be the new head
  if (prev == null) {
    addNew.next = head;
    head = addNew;
  } else {
    // Insert 'addNew' after 'prev'
    addNew.next = prev.next;
    prev.next = addNew;
  }

  // If 'toAdd' was not found, and 'prev' is still null, we need to update the tail
  if (temp == null && prev == null) {
    tail = addNew;
  }
}


  void display() {
    if (head == null) {
      print('null found');
      return;
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }
}
