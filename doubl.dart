main() {
  LL liast = LL();
  liast.Add(10);
  liast.Add(70);
  liast.Print();
  liast.PrintReverse();
  liast.DeleteFirst();
  print('List after deleting first node:');
  liast.Print();
}

class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class LL {
  Node? head;
  Node? tail;

  void Add(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
      newnode.prev = tail;
    }
    tail = newnode;
  }

  void Print() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void PrintReverse() {
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }

  void DeleteFirst() {
    if (head != null) {
      head = head!.next;
      if (head != null) {
        head!.prev = null;
      } else {
        tail = null;
      }
    }
  }

    void DeleteLast() {
    if (tail != null) {
      tail = tail!.prev;
      if (tail != null) {
        tail!.next = null;
      } else {
        head = null;
      }
    }
  }
}
