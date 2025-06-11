class STNode<T> {
  T nodeValue;
  STNode<T>? left;
  STNode<T>? right;
  STNode<T>? parent;

  STNode(this.nodeValue, [this.parent]);
}

class BinarySearchTree<T extends Comparable> {
  STNode<T>? root;
  int treeSize = 0;

  BinarySearchTree() {
    root = null;
  }

  bool add(T item) {
    STNode<T>? t = root, parent;
    int orderValue = 0;

    while (t != null) {
      parent = t;
      orderValue = item.compareTo(t.nodeValue);

      if (orderValue == 0) {
        return false;
      } else if (orderValue < 0) {
        t = t.left;
      } else {
        t = t.right;
      }
    }
    STNode<T> newNode = STNode(item, parent);
    if (parent == null) {
      root = newNode;
    } else if (orderValue < 0) {
      parent.left = newNode;
    } else {
      parent.right = newNode;
    }
    treeSize++;
    return true;
  }
    STNode<T>? findNode(T item) {
    STNode<T>? t = root, parent = null;
    int orderValue = 0;
    while (t != null) {
      orderValue = item.compareTo(t.nodeValue);

      if (orderValue == 0) {
        return t;
      } else if (orderValue < 0) {
        t = t.left;
      } else {
        t = t.right;
      }
    }
    return null;
  }

  void first() {
    if (root == null) {
      return;
    }

    STNode<T> current = root!;
    while (current.left != null) {
      current = current.left!;
    }

    print(current.nodeValue);
  }
}

void main() {
  BinarySearchTree<int> bst = BinarySearchTree<int>();
  bst.add(35);
  bst.add(18);
  bst.add(25);
  bst.add(48);
  bst.add(20);

  bst.first();
}