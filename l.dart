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

  void PrintsOp() {
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
      return;
    }
    Node? currnode = head;
    while (currnode?.next != null) {
      currnode = currnode?.next;
    }
    currnode?.next = newnode;
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
        newnode.next = currnode.next;
        currnode.next = newnode;
        return;
      }
      currnode = currnode.next;
    }
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
    if (head?.next == null) {
      head = null;
      return;
    }
    Node? currnode = head;
    Node? prevnode;
    while (currnode?.next != null) {
      prevnode = currnode;
      currnode = currnode?.next;
    }
    prevnode?.next = null;
  }

  void reverse() {
    if (head == null || head?.next == null) {
      return;
    }
    Node? prev = head;
    Node? curr = head?.next;
    while (curr != null) {
      Node? nextn = curr.next;
      curr.next = prev;

      prev = curr;
      curr = nextn;
    }
    head?.next = null;
    head = prev;
  }

  void Duplicate() {
    if (head == null || head?.next == null) {
      return;
    }
    Node? currnode = head;
    while (currnode != null) {
      Node? nwnode = currnode;
      while (nwnode?.next != null) {
        if (currnode.data == nwnode?.next?.data) {
          nwnode?.next = nwnode.next?.next;
        }
        nwnode = nwnode?.next;
      }
      currnode = currnode.next;
    }
  }
}

void main() {
  LL li = LL();
  li.AddFirst(10);
  li.AddFirst(20);
  li.AddLast(30);
  li.AddLast(40);
  li.AddFirst(40);
  li.PrintsOp();
  li.InsertAfter(20, 440);
  li.PrintsOp();
  // li.DeleteFirst();
  // li.PrintsOp();
  // li.DeleteLast();
  // li.PrintsOp();
  // li.reverse();
  // li.PrintsOp();
  li.Duplicate();
  li.PrintsOp();
}
