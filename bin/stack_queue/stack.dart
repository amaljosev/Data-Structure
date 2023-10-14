class Node {
  dynamic data;
  Node? next;
  Node(this.data);
}
class Stack {
  Node? top;
  void push(data){
    final newNode=Node(data);
    if (top==null) {
      top=newNode;

    } else {
      newNode.next=top;
      top=newNode;
    }
  }
  void pop(){
    top=top!.next;
  }
  void display(){
    Node? current=top;
    while (current!=null) {
      print(current.data);
      current=current.next;
    }
  }
}