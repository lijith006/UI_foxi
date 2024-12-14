class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class DLinkedList {
  Node? head;
  Node? tail;
  void append(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  //delete
  void delete(int value) {
    if (head == null) return;
    if (head?.data == value) {
      head = head?.next;
      if (head != null) {
        head?.prev = null;
      }
      return;
    }

    Node? current = head;
    while (current != null && current.data != value) {
      current = current.next;
    }
    if (current != null) {
      if (current.next != null) {
        current.next?.prev = current.prev;
      }
      if (current.prev != null) {
        current.prev?.next = current.next;
      }
    }
  }

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void displayReverse() {
    Node? current = tail;
    while (current != null) {
      print(current.data);
      current = current.prev;
    }
  }
}

void main() {
  DLinkedList obj = DLinkedList();
  obj.append(10);
  obj.append(8);
  obj.append(20);
  obj.display();
  print('reverse.......');
  obj.displayReverse();
}
