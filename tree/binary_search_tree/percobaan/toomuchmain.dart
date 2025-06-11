import 'percobaan4.dart';

void main() {
  BinarySearchTree<int> bst = BinarySearchTree<int>();

  bst.add(35);
  bst.add(18);
  bst.add(25);
  bst.add(48);
  bst.add(20);

  STNode<dynamic>? rootNode = bst.getRoot();
  if (rootNode != null) {
    print('Root Value: ${rootNode.nodeValue}');
  } else {
    print('The tree is empty.');
  }

  print('InOrder Display:');
  bst.InOrderDisplay(bst.getRoot());
  STNode<int>? nodeToRemove = bst.findNode(20);
  bst.removeNode(nodeToRemove);
  print('InOrder Display:');
  bst.InOrderDisplay(bst.getRoot());
}