class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class DD {
  Node? head;
  Node? tail;
  void Add(int data) {
    Node? newnode = Node(data);
    if (head == null) {
      head = newnode;
      return;
    } else {
      tail?.next = newnode;
      newnode.prev = tail;
    }
    tail = newnode;
  }

  void Prints() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
    
  }
}
