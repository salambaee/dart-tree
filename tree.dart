import 'dart:collection';
import 'dart:io';

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

  // Insert by level order
  void insertLevelOrder(T value) {
    Node<T> newNode = Node(value);

    if (root == null) {
      root = newNode;
      return;
    }

    Queue<Node<T>> q = Queue();
    q.add(root!);

    while (q.isNotEmpty) {
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

  // Insert at target
  void insertTarget(T target, T value) {
    if (root == null) {
      print("Tree is empty");
      return;
    }

    Queue<Node<T>> q = Queue();
    q.add(root!);

    while (q.isNotEmpty) {
      Node<T> current = q.removeFirst();

      if (current.value == target) {
        if (current.left == null) {
          current.left = Node(value);
          print("Ditambahkan ke kiri dari ${target}");
          return;
        } else if (current.right == null) {
          current.right = Node(value);
          print("Ditambahkan ke kanan dari ${target}");
          return;
        } else {
          print("Node dengan nilai ${target} sudah punya dua child");
        }
      }
      if (current.left != null) {
        q.add(current.left!);
      }
      if (current.right != null) {
        q.add(current.right!);
      }
    }
  }  

  // Pembacaan
  void inOrder() {
    List<Node<T>> stack = [];
    Node<T>? current = root;

    while (current != null || stack.isNotEmpty) {
      while (current != null) {
        stack.add(current);
        current = current.left;
      }
      current = stack.removeLast();
      stdout.write("${current.value} ");
      current = current.right;
    }
    print(" ");
  }

  void preOrder() {
    if (root == null) {
      return;
    }

    List<Node<T>> stack = [];
    stack.add(root!);

    while (stack.isNotEmpty) {
      Node<T> current = stack.removeLast();
      stdout.write("${current.value} ");

      if (current.right != null) {
        stack.add(current.right!);
      }

      if (current.right != null) {
        stack.add(current.left!);
      }
    }
    print(" ");
  }

  void postOrder() {
    if (root == null) {
      return;
    }

    List<Node<T>> stack1 = [];
    List<Node<T>> stack2 = [];

    stack1.add(root!);

    while (stack1.isNotEmpty) {
      Node<T> current = stack1.removeLast();
      stack2.add(current);

      if (current.left != null) {
        stack1.add(current.left!);
      }

      if (current.right != null) {
        stack1.add(current.right!);
      }
    }

    while (stack2.isNotEmpty) {
      stdout.write("${stack2.removeLast().value} ");
    }
    print(" ");
  }

  //void printInOrder(Node? node) {
  //  if (node != null) {
  //    printInOrder(node.left);
  //    stdout.write('${node.value}, ');
  //    printInOrder(node.right);
  //  }
  //}
//
  //void printInOrderFromRoot() {
  //  printInOrder(root);
  //  print(" ");
  //}

  //void printPreOrder(Node? node) {
  //  if (node != null) {
  //    print('${node.value} ');
  //    printPreOrder(node.left);
  //    printPreOrder(node.right);
  //  }
  //}
//
  //void printPreOrderFromRoot() {
  //  printPreOrder(root);
  //}
//
  //void printPostOrder(Node? node) {
  //  if (node != null) {
  //    printPostOrder(node.left);
  //    printPostOrder(node.right);
  //    print("${node.value}");
  //  }
  //}
//
  //void printPostOrderFromRoot() {
  //  printPostOrder(root);
  //}
//
  //int maxDepth(Node? node) {
  //  if (node == null) {
  //    return 0;
  //  } else {
  //    int ldepth = maxDepth(node.left);
  //    int rdepth = maxDepth(node.right);
  //    return ldepth > rdepth ? ldepth + 1: rdepth + 1;
//
  //  }
  //}
//
  //void printLevelOrder() {
  //  int h = height(root);
  //  for (int i = 0; i <= h; i++) {
  //    printCurrentLevel(root, i);
  //  }
  //}
//
  //int height(Node? root) {
  //  if (root == null) {
  //    return 0;
  //  } else {
  //    int lheight = height(root.left);
  //    int rheight = height(root.right);
  //    return lheight > rheight ? lheight + 1 : rheight + 1;
  //  }
  //}
//
  //void printCurrentLevel(Node? root, int level) {
  //  if (root != null) {
  //    if (level == 0) {
  //      print('${root.value}');
  //    } else if (level >= 1) {
  //      printCurrentLevel(root.left, level - 1);
  //      printCurrentLevel(root.right, level - 1);
  //    }
  //  }
  //}
//
  //void deleteDeepest(Node root, Node delNode) {
  //  Queue<Node> q = Queue();
  //  q.add(root);
  //  Node? temp;
//
  //  while(q.isNotEmpty) {
  //    temp = q.removeFirst();
  //    if (temp == delNode) {
  //      temp = null;
  //      return;
  //    }
  //    if (temp.right != null) {
  //      if (temp.right == delNode) {
  //        temp.right = null;
  //        return;
  //      } else {
  //        q.add(temp.right!);
  //      }
  //    }
  //    if (temp.left != null) {
  //      if (temp.left == delNode) {
  //        temp.left = null;
  //        return;
  //      } else {
  //        q.add(temp.left!);
  //      }
  //    }
  //  }
  //}
//
  //void delete(Node? root, int key) {
  //  if (root == null) {
  //    return;
  //  }
  //  if (root.left == null && root.right == null) {
  //    if (root.value == key) {
  //      root = null;
  //    }
  //    return;
  //  }
  //  Queue<Node> q = Queue();
  //  q.add(root);
  //  Node? temp;
  //  Node? keyNode;
//
  //  while (q.isNotEmpty) {
  //    temp = q.removeFirst();
  //    if (temp.value == key) {
  //      keyNode = temp;
  //    }
  //    if (temp.left != null) {
  //      q.add(temp.left!);
  //    }
  //    if (temp.right != null) {
  //      q.add(temp.right!);
  //    }
  //  }
  //  if (keyNode != null) {
  //    dynamic x = temp!.value;
  //    deleteDeepest(root, temp);
  //    keyNode.value = x;
  //  }
  //}
}