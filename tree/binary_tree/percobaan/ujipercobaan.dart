import 'percobaan7.dart';

void main() {
  BinaryTree t = BinaryTree();
  t.root = Node(10);
  t.root!.left = Node(20);
  t.root!.right = Node(30);
  t.root!.right!.left = Node(4);
  print("In Order traversal of binary tree is : ");
  t.printInOrderFromRoot();
  print("Height og binary tree : ${t.maxDepth(t.root)}");
  t.delete(t.root, 30);
  print("In Order traversal of binary tree is : ");
  t.printInOrderFromRoot();
  print("Nilai pada level tertentu pada Binary tree : ");
  t.printCurrentLevel(t.root, 1);
}