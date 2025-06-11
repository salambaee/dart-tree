class Node<T> {
  T value;
  Node<T>? left;
  Node<T>? right;

  Node(this.value);
}

class BinaryTree<T> {
  Node<T>? root;

  BinaryTree() {
    root = null;
  }

  void printInOrder(Node? node) {
    if (node != null) {
      printInOrder(node.left);
      print('${node.value}');
      printInOrder(node.right);
    }
  }

  void printInOrderFromRoot() {
    printInOrder(root);
  }

  void printPreOrder(Node? node) {
    if (node != null) {
      print('${node.value} ');
      printPreOrder(node.left);
      printPreOrder(node.right);
    }
  }

  void printPreOrderFromRoot() {
    printPreOrder(root);
  }

  void printPostOrder(Node? node) {
    if (node != null) {
      printPostOrder(node.left);
      printPostOrder(node.right);
      print("${node.value}");
    }
  }

  void printPostOrderFromRoot() {
    printPostOrder(root);
  }
}