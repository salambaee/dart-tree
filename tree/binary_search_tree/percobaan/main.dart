import 'percobaan3.dart';

void main() {
  BinarySearchTree<int> bst = BinarySearchTree<int>();

  bst.add(35);
  bst.add(18);
  bst.add(25);
  bst.add(48);
  bst.add(20);

  print("Tree Size : ${bst.treeSize}");

  var node = bst.findNode(35);
  if (node != null) {
    print("Node found with value : ${node.nodeValue}");
  } else {
    print("Node not found");
  }

  bool Node = bst.find(18);
  if (Node) {
    print("Node found");
  } else {
    print("Node not found");
  }
}