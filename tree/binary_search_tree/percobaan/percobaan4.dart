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

  void removeNode(STNode<T>? dNode) {
    if (dNode == null) {
      return;
    }
    STNode<T>? pNode, rNode;
    pNode = dNode.parent;
    if (dNode.left == null || dNode.right == null) {
      if (dNode.right == null) {
        rNode = dNode.left;
      } else {
        rNode = dNode.left;
      }

      if (rNode != null) {
        print("Ngeset parent");
        rNode.parent = pNode;
      }

      if (pNode == null) {
        root = rNode;
      } else if (dNode.nodeValue.compareTo(pNode.nodeValue) < 0) {
        pNode.left = rNode;
      } else {
        pNode.right = rNode;
      }
    } else {
      STNode<T>? pOfRNode = dNode;
      rNode = dNode.right;
      pOfRNode = dNode;

      while (rNode!.left != null) {
        pOfRNode = rNode;
        rNode = rNode.left;
      }
      dNode.nodeValue = rNode.nodeValue;
      if (pOfRNode == dNode) {
        dNode.right = rNode.right;
      } else {
        pOfRNode!.left = rNode.right;
      }

      if (rNode.right != null) {
        rNode.right!.parent = pOfRNode;
      }
    }
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

  bool find(T item) {
    STNode<T>? t = findNode(item);

    if (t != null) {
      T value = t.nodeValue;
      return true;
    }
    return false;
  }

  STNode<T>? getRoot() {
    return root;
  }

  void InOrderDisplay(STNode<T>? node) {
    if (node == null) {
      return;
    }

    InOrderDisplay(node.left);
    print(node.nodeValue);
    InOrderDisplay(node.right);
  }
}