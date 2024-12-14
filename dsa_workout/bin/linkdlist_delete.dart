class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;
  void append(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void delete(int value) {
    if (head?.data == value) {
      head = head?.next;
    }
    Node? current = head;
    while (current?.next != null && current?.next?.data != value) {
      current = current?.next;
    }

    if (current?.next != null) {
      current?.next = current.next?.next;
    }
  }
}

void main() {
  LinkedList obj = LinkedList();
  obj.append(10);
  obj.append(5);
  obj.append(30);
  obj.append(50);
  obj.display();
  print('Deleting....');
  obj.delete(5);
  obj.display();
}
