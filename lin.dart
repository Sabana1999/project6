class Node {
  Node? next;
  int? data;
  Node(this.data);
}

class DD {
  Node? head;
  DD();
  void Addfirst(int data) {
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
}

void main() {
  DD li = DD();
  li.Addfirst(10);
  li.Addfirst(20);
  li.AddLast(30);
  li.AddLast(40);
  li.Prints();
}
