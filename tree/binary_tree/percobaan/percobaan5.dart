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

  int maxDepth(Node? node) {
    if (node == null) {
      return 0;
    } else {
      int ldepth = maxDepth(node.left);
      int rdepth = maxDepth(node.right);
      return ldepth > rdepth ? ldepth + 1: rdepth + 1;

    }
  }
}