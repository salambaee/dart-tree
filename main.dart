import 'tree.dart';


void main() {
  BinaryTree tree = BinaryTree();
  print("Hasil dari pemberian method untuk menambahkan berdasarkan Level Order (secara rekursif maupun dengan bantuan Queue)");
  print(" ");
  tree.insertLevelOrder("A");
  tree.insertLevelOrder("B");
  tree.insertLevelOrder("C");
  tree.insertLevelOrder("D");
  tree.insertLevelOrder("E");

  print(" ");
  print("Hasil dari pemberian method untuk menambahkan data pada binary tree berdasarkan target dan menerapkan linear search");
  tree.insertTarget("B", "D");
  tree.insertTarget("B", "E");
  tree.insertTarget("B", "F");
  tree.insertTarget("X", "Z");

  print(" ");
  print("Hasil dari pemberian method untuk melakukan traversal data secara In Order, Pre Order dan Post Order dengan teknik non-rekursif yang memanfaatkan konsep push dan pop pada stack. Gunakan list untuk menyimpan elemen pada operasi stack dalam pembacaan data pada tree tersebut!");
  tree.inOrder();
  tree.preOrder();
  tree.postOrder();

  //tree.insertData(20);
  //tree.insertData(5);
  //tree.insertData(15);
  //tree.insertData(3);
  //tree.insertData(7);
  //tree.insertData(12);
  //tree.insertData(18);
  //tree.printPreorderFromRoot();
  //tree.root = Node(1);
  //tree.root!.left = Node(2);
  //tree.root!.left!.left = Node(4);
  //tree.root!.left!.right = Node(5);
  //tree.root!.right = Node(3);
  //print("Level Order traversal of binary tree is : ");
  //tree.printCurrentLevel(tree.root, 1);

  //print("Kedalaman Binary Tree : ${tree.maxDepth(tree.root)}");
  //tree.printInorderNonRecursive();
}