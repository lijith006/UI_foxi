// class Node<T> {
//   T data;
//   Node<T>? next;
//   Node(this.data) {
//     this.next = null;
//   }
// }

// class Linkedlist<T> {
//   Node<T>? head;
//   Node<T>? tail;
//   void append(T data) {
//     Node<T> newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//       tail = newNode;
//     } else {
//       tail?.next = newNode;
//       tail = newNode;
//     }
//   }

//   void prepend(T data) {
//     Node<T> newNode = Node(data);
//     newNode.next = head;
//     head = newNode;
//   }

//   void reverse() {
//     print('Reversing...........');
//     Node<T>? current = head, priv;
//     Node<T>? next;
//     while (current != null) {
//       next = current.next;
//       current.next = priv;
//       priv = current;
//       current = next;
//     }
//     head = priv;
//   }

//   void delete(T key) {
//     Node<T>? current = head, priv;
//     if (current != null && current.data == key) {
//       head = current.next;
//       return;
//     }
//     while (current != null && current.data != key) {
//       priv = current;
//       current = current.next;
//     }
//     if (current == null) {
//       return;
//     }
//     priv!.next = current.next;
//   }

//   void traverse() {
//     Node<T>? current;
//     current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   var list = Linkedlist();
//   list.append(10);
//   list.append(11);
//   list.append(12);
//   list.prepend(100);
//   list.traverse();
//   list.reverse();
//   list.traverse();
// }
//------------------------------------------------

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
    }
  }

  num findsum() {
    Node? temp = head;
    num sum = 0;
    while (temp != null) {
      sum = sum + temp.data;
      temp = temp.next;
    }
    return sum;
  }

  void reverse() {
    print('reverse...');
    Node<T>? current = head, prev;
    Node<T>? next;
    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;
  }

  void delete(T key) {
    print('deleting');
    Node<T>? current = head, prev;
    if (current != null && current.data == key) {
      head = current.next;
      return;
    }

    while (current != null && current.data != key) {
      prev = current;
      current = current.next;
    }
    if (current == null) {
      return;
    }
    prev!.next = current.next;
  }

  void traverse() {
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
  list.append(10);
  list.append(15);
  list.delete(10);
  list.reverse();
  num sum = list.findsum();
  print(sum);
  list.traverse();
}
