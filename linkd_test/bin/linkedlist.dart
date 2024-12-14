// class Node<T> {
//   T data;
//   Node<T>? next;
//   Node(this.data);
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
//       tail?.next = null;
//     }
//   }

//   void traverse() {
//     Node<T>? current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   var sample = Linkedlist<int>();
//   sample.append(2);
//   sample.append(4);
//   sample.append(5);
//   sample.traverse();
// }

class Node<T> {
  T data;
  Node<T>? next;
  Node(this.data);
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
  var sample = Linkedlist();
  sample.append(5);
  sample.append(6);
  sample.append(12);
  sample.append(22);
  sample.traverse();
}
