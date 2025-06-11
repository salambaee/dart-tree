class Node {
  String data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BinaryTree {
  Node? root;

  Node? copyTree(Node? t) {
    if (t == null) {
      return null;
    }

    Node newNode = Node(t.data);
    newNode.left = copyTree(t.left);
    newNode.right = copyTree(t.right);
    return newNode;
  }

  void preOrder(Node? node) {
    if (node == null) {
      return;
    }
    print(node.data);
    preOrder(node.left);
    preOrder(node.right);
  }
}

void main() {
  BinaryTree t = BinaryTree();
  print("Studi Kasus 1");
  t.root = Node("A");
  t.root!.left = Node("B");
  t.root!.right = Node("C");
  t.root!.left!.left = Node("D");
  t.root!.left!.right = Node("E");
  t.root!.left!.right!.left = Node("G");
  t.root!.right!.right = Node("F");
  t.root!.right!.right!.left = Node("H");
  t.root!.right!.right!.right = Node("J");

  print("Studi Kasus 2");
  t.root = Node("A");
  t.root!.left = Node("B");
  t.root!.right = Node("c");
  t.root!.left!.left = Node("D");
  t.root!.left!.left!.right = Node("G");
  t.root!.right!.right = Node("F");
  t.root!.right!.left = Node("E");
  t.root!.right!.left!.left = Node("H");
  t.root!.right!.left!.right = Node("I");

  print("Studi Kasus 3");
  t.root = Node("+");
  t.root!.left = Node("*");
  t.root!.left!.left = Node("a");
  t.root!.left!.right = Node("b");
  t.root!.right = Node("/");
  t.root!.right!.left = Node("-");
  t.root!.right!.left!.left = Node("c");
  t.root!.right!.right = Node("e");
  t.root!.right!.left!.right = Node("d");

  print("Pre-order dari tree asli");
  t.preOrder(t.root);

  BinaryTree copy = BinaryTree();
  copy.root = copy.copyTree(t.root);

  print("Pre-order dari tree salinan");
  t.preOrder(copy.root);
}