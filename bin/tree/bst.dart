class Node {
  int data;
  Node? right, left;
  Node(this.data);
}

class BinaryTree {
  Node? root;
  void insert(int data) {
    var current = root;
    if (current == null) {
      root = Node(data);
      return;
    }
    while (true) {
      if (data < current!.data) {
        if (current.left == null) {
          current.left = Node(data);
          return;
        } else {
          current = current.left;
        }
      } else {
        if (current.right == null) {
          current.right = Node(data);
          return;
        } else {
          current = current.right;
        }
      }
    }
  }

  void inOrder() {
    inOrderHelper(root);
  }

  void inOrderHelper(Node? node) {
    if (node != null) {
      inOrderHelper(node.left);
      print(node.data);
      inOrderHelper(node.right);
    }
  }

  void preOrder() {
    preOrderHelper(root);
  }

  void preOrderHelper(Node? node) {
    if (node != null) {
      print(node.data);
      inOrderHelper(node.left);
      inOrderHelper(node.right);
    }
  }

  void postOrder() {
    postOrderHelper(root);
  }

  void postOrderHelper(Node? node) {
    if (node != null) {
      inOrderHelper(node.left);
      inOrderHelper(node.right);
      print(node.data);
    }
  }
}
  // bool validation() {
  //   for (var i = 0; i < array.length - 1; i++) {
  //     if (array[i] > array[i] + 1) {
  //       return false;
  //     }
  //   }
  //   return true;
  // }

void main(List<String> args) {
  BinaryTree bst = BinaryTree();
  bst.insert(10);
  bst.insert(5);
  bst.insert(20);
  bst.insert(2);
  bst.insert(8);
  bst.preOrder();
}