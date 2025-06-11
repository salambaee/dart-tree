import 'dart:io';
import 'dart:collection';
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

  void insertByLevelOrder(T value) {
    Node<T> newNode = Node(value);

    if (root == null) {
      root = newNode;
      return;
    }

    Queue<Node<T>> q = Queue();
    q.add(root!);

    while(q.isNotEmpty) {
      Node<T> temp = q.removeFirst();
      if (temp.left == null) {
        temp.left = newNode;
        return;
      } else {
        q.add(temp.left!);
      }

      if (temp.right == null) {
        temp.right = newNode;
        return;
      } else {
        q.add(temp.right!);
      }
    }
  }

  void printInOrder(Node? node) {
    if (node != null) {
      printInOrder(node.left);
      stdout.write('${node.left} ');
      printInOrder(node.right);
    }
  }

  void printInOrderFromRoot() {
    printInOrder(root);
  }

  void printPreOrder(Node? node) {
    if (node != null) {
      stdout.write("${node.value }");
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
      stdout.write("${node.value} ");
    }
  }

  void printPostOrderFromRoot() {
    printPostOrder(root);
  }
}

void main() {
  BinaryTree t = BinaryTree();
  //A+B–C+D
  t.insertByLevelOrder("A");
  t.insertByLevelOrder("+");
  t.insertByLevelOrder("B");
  t.insertByLevelOrder("-");
  t.insertByLevelOrder("C");
  t.insertByLevelOrder("+");
  t.insertByLevelOrder("D");
  print("\nPembacaan secara Traversal Inorder : ");
  t.printInOrderFromRoot();
  print("\nPembacaan secara Preorder : ");
  t.printPreOrderFromRoot();
  print("\nPembacaan secara Postorder : ");
  t.printPostOrderFromRoot();

  //(A + B) * (C-D)
  t.insertByLevelOrder("(");
  t.insertByLevelOrder("A");
  t.insertByLevelOrder("+");
  t.insertByLevelOrder("B");
  t.insertByLevelOrder(")");
  t.insertByLevelOrder("*");
  t.insertByLevelOrder("()");
  t.insertByLevelOrder("C");
  t.insertByLevelOrder("-");
  t.insertByLevelOrder("D");
  t.insertByLevelOrder(")");
  print("\nPembacaan secara Traversal Inorder :");
  t.printInOrderFromRoot();
  print("\nPembacaan secara Preorder :");
  t.printPostOrderFromRoot();
  print("\nPembacaan secara Postorder :");
  t.printPostOrderFromRoot();
}