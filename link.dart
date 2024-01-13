class Node {
  Node? next;
  int? data;
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
    print('Null');
  }

  void AddLast(int data) {
    Node? newnode = Node(data);
    if (head == null) {
      head = newnode;
      return;
    }
    Node? currnod = head;
    while (currnod?.next != null) {
      currnod = currnod?.next;
    }
    currnod?.next = newnode;
  }

  void DeleteF() {
    if (head == null) {
      print('list is null');
      return;
    }
    head = head?.next;
  }

  void DeleteL() {
    if (head == null) {
      print('list is empty');
      return;
    }
    if (head?.next == null) {
      head = null;
      return;
    }
    Node? secondlast = head;
    Node? lastnode = head?.next;
    while (lastnode?.next != null) {
      secondlast = lastnode;
      lastnode = lastnode?.next;
    }
    secondlast?.next = null;
  }

  void Dupli() {
    if (head == null || head?.next == null) {
      return;
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
}

void main() {
  LL li = LL();
  li.AddFirst(20);
  li.AddFirst(20);
  li.AddLast(20);
  li.Prints();
  li.Dupli();
  // li.DeleteF();
   li.Prints();
  // li.DeleteL();
  // li.Prints();
}
