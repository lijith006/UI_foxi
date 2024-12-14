class Node<T> {
  T data;
  Node<T>? next;
  Node(this.data) {
    this.next = null;
  }
}

class Linkedlist<T> {
  Node<T>? head;
  Node<T>? tail;
  void append(T data) {
    Node<T> newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail?.next = newNode;
      tail = newNode;
      tail?.next = null;
    }
  }

  void prepend(T data) {
    Node<T> newnode = Node(data);
    if (head == null) {
      head = newnode;
      tail = newnode;
    } else {
      newnode.next = head;
      head = newnode;
    }
  }

  void reverse() {
    Node<T>? priv;
    Node<T>? current = head;
    Node<T>? next;
    while (current != null) {
      next = current.next;
      current.next = priv;
      priv = current;
      current = next;
    }
    head = priv;
  }

  void delete(T key) {
    print('delete node');
    Node<T>? current = head, priv;
    if (current != null && current.data == key) {
      head = current.next;
      return;
    }
    while (current != null && current.data != key) {
      priv = current;
      current = current.next;
    }
    if (current == null) return;
    priv!.next = current.next;
  }

  // void delete(T key) {
  //   Node<T>? current = head, priv;

  //   print('deleting the value $key');

  //   if (current != null && current.data == key) {
  //     head = current.next;
  //     return;
  //   }
  //   while (current != null && current.data != key) {
  //     priv = current;
  //     current = current.next;
  //   }

  //   if (current == null) return;
  //   priv!.next = current.next;
  // }

  //inserting at middle
  void insertAtMiddle(T data, T key) {
    print('Inserting at middle .................');

    Node<T>? current = head;
    while (current?.data != data) {
      current = current?.next;
    }
    Node<T> newNode = Node(key);
    newNode.next = current?.next;
    current?.next = newNode;
  }

  void traverse() {
    print('traverse printing');
    Node<T>? current;
    current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  var list = Linkedlist();
  list.append(5);
  list.append(6);
  list.append(7);
  list.append(8);
  list.traverse();
  list.delete(8);
  // sample.prepend(100);
  // sample.traverse();
  // sample.reverse();
  // sample.traverse();

  // sample.traverse();
  // list.insertAtMiddle(6, 25);
  list.traverse();
  // sample.delete(5);
  // sample.traverse();
}
