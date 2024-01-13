void main() {
  LinkedList list = LinkedList();
  list.AddFirst(70);
  list.AddFirst(80);
  list.AddLast(89);
  list.AddLast(75);
  list.Print();
  // list.DeleteFirst();
  // list.Print();
  // list.DeleteLast();
  // list.Print();
  list.InsertAfter(80, 88);
  list.Print();
}

class Node {
  dynamic data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;
  LinkedList();
  void AddFirst(dynamic data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    newNode.next = head;
    head = newNode;
  }

  void AddLast(dynamic data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    Node? currNode = head;
    while (currNode?.next != null) {
      currNode = currNode?.next;
    }
    currNode?.next = newNode;
  }

  void Print() {
    if (head == null) {
      print('list is empty');
      return;
    }

    Node? currNode = head;
    while (currNode != null) {
      print(currNode.data.toString() + '->');
      currNode = currNode.next;
    }
    print('null');
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
    }
    if (head?.next == null) {
      head = null;
      return;
    }

    Node? SecondLast = head;
    Node? LastNode = head?.next;
    while (head?.next != null) {
      SecondLast = SecondLast?.next;
      LastNode = LastNode?.next;
    }
    SecondLast?.next = null;
  }

  void InsertAfter(int target, int newdata) {
    if (head == null) {
      print('list is empty');
      return;
    }
    Node? currnode = head;
    while (currnode != null) {
      if (currnode.data == target) {
        Node newnode = Node(newdata);
        newnode.next = currnode.next;
        currnode.next = newnode;
        return;
      }
      currnode = currnode.next;
    }
  }
}
