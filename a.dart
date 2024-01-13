class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class LL {
  Node? head;
  void AddFirst(int data) {
    Node? newnode = Node(data);
    if (head == null) {
      head = newnode;
      return;
    }
    newnode.next = head;
    head = newnode;
  }

  void AddLast(int data) {
    Node? newnode = Node(data);
    if (head == null) {
      head = newnode;
      return;
    }
    Node? currnode = head;
    while (currnode?.next != null) {
      currnode = currnode?.next;
    }
    currnode?.next = newnode;
  }

  void DeleteFirst() {
    if (head == null) {
      print('list is empty');
      return;
    }
    head = head?.next;
  }

  void DeleteLast() {
    if (head == null) {
      print('list is empty');
      return;
    }
    if (head?.next != null) {
      head = null;
      return;
    }
    Node? secondlast = head;
    Node? lastnode = head?.next;
    while (head?.next != null) {
      secondlast = secondlast?.next;
      lastnode = lastnode?.next;
    }
    secondlast?.next = null;
  }

  void Duplicate() {
    if (head == null || head?.next == null) {
      print('list is empty');
    }
    Node? currnode = head;
    while (currnode != null) {
      Node? newnode = currnode;
      while (newnode?.next != null) {
        if (currnode?.data == newnode?.next?.data) {
          newnode?.next = newnode.next?.next;
        } else {
          newnode = newnode?.next;
        }
        currnode = currnode?.next;
      }
    }
  }

  void Prints() {
    if (head == null) {
      print('list is empty');
      return;
    }
    Node? currnode = head;
    while (currnode != null) {
      print(currnode.data.toString() + '->');
      currnode = currnode.next;
    }
    print('null');
  }

  void InsertAfter(int target, int newdata) {
    if (head == null) {
      print('list is empty');
      return;
    }
    Node? currnode = head;
    while (currnode != null) {
      if (currnode.data == target) {
        Node? newnode = Node(newdata);
        newnode.next = currnode;
        currnode.next = newnode;
        return;
      }
      currnode = currnode.next;
    }
  }
}
