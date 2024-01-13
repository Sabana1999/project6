class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class LL {
  Node? head;
  LL();
  void AddFirst(int data) {
    Node? newnode = Node(data);
    if (head == null) {
      head = newnode;
      return;
    }
    newnode.next = head;
    head = newnode;
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

  void AddLast(int data) {
    Node? newnode = Node(data);
    if (head == null) {
      head = newnode;
    }
    Node? currnode = head;
    if (currnode?.next != null) {
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

  void deleteLast() {
    if (head == null) {
      print('list is empty');
      return;
    }
    if (head?.next == null) {
      head = null;
      return;
    }
    Node? currnode = head;
    Node? prev;
    while (currnode?.next != null) {
      prev = currnode;
      currnode = currnode?.next;
    }
    prev?.next = null;
  }

  void InsertAfter(int target, int newdata) {
    if (head == null) {
      print('list is empty');
      return;
    }
    Node? currnode = head;
    while (currnode != null) {
      if (currnode.data == target) {
        Node? newnode = currnode;
        newnode = newnode.next;
      }
      currnode = currnode.next;
    }
  }
}

main() {
  LL li = LL();
  li.AddFirst(10);
  li.AddFirst(20);
  li.AddLast(50);
  li.Prints();
  li.DeleteFirst();
  li.Prints();
  li.deleteLast();
  li.Prints();
}
