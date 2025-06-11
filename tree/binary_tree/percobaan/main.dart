import 'percobaan4.dart';
void main() {
  BinaryTree t = BinaryTree();
  t.root = Node(10);
  t.root!.left = Node(20);
  t.root!.right = Node(30);
  t.root!.right!.left = Node(4);
  print("In Order traversal of binary tree is: ");
  t.printInOrderFromRoot();
  print("Pre Order traversal of binary tree is: ");
  t.printPreOrderFromRoot();
  print("Post Order traversal of binary tree is: ");
  t.printPostOrderFromRoot();
}