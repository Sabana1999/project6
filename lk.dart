class Node {
  Node? next;
  int? data;
  Node(this.data);
}

class LL {
  Node? head;
  void Insert(int data) {
    Node? newnode = Node(data);
    if (head == null) {
      head = newnode;
      return;
    }
    newnode.next = head;
    head = newnode;
  }

  void delte() {
    Node? low = head;
    Node? fast = head;
    Node? prev = null;
    while (fast != null && fast.next != null) {
      fast = fast.next?.next;
      prev = low;
      low = low?.next;
    }
    if (prev != null) {
      prev.next = low?.next;
    } else {
      head = low?.next;
    }
  }

  void Print() {
    Node? curr = head;
    while (curr != null) {
      print(curr.data);
      curr = curr.next;
    }
    print('null');
  }
}

void main() {
  LL li = LL();
  li.Insert(10);
  li.Insert(20);
  li.Print();
  li.delte();
  li.Print();
}
