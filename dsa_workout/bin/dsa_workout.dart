//forEach
// void main(){
//   List<int>numbers=[2,5,4,1,3,6,8];
//   numbers.forEach((num){
//     print(num*2);
//   });
  
// }


//LIST

// void main() {
//   List<int> list1 = [10, 2, 5, 8, 96];
//   list1.add(100); //ADDED NEW VALUE
//   list1[3] = 200; //REPLACED
//   list1.insert(2, 600); //INSERTING TO SPECIFIC INDEX
//   print(list1);

//   iterateListt(list1); //Iterating function - for in
// }

// void iterateListt(List<int> list1) {
//   for (int num in list1) {
//     print(num);
//   }
// }

//--------------------------------------------------------
//*************************************************************************** */
//*************************************************************************** */

//RECURSION

//factorial

// int factorial(int n) {
//   if (n == 0) return 1;
//   return n * factorial(n - 1);
// }

// void main() {
//   print(factorial(5));
// }

//---------------------------------------------------------
//fibinocci
//*********** */
// int fibinocci(int n) {
//   if (n <= 1) return n;
//   return fibinocci(n - 1) + fibinocci(n - 2);
// }

// void main() {
//   print(fibinocci(6));
// }

//-----------------------------------------------------------
//Sum of Digits
//************** */

// int sum(int n) {
//   if (n == 0) return 0;
//   return n % 10 + sum(n ~/ 10);
// }

// void main() {
//   print(sum(123));
// }

//---------------------------------------------------------
//palindrome

// bool isPalindrome(String str, int start, int end) {
//   if (start >= end) return true;
//   if (str[start] != str[end]) return false;
//   return isPalindrome(str, start + 1, end - 1);
// }

// void main() {
//   String input = 'malayalam';
//   bool result = isPalindrome(input, 0, input.length - 1);
//   print(result);
// }
//---------------------------------------------------------

//SUM recursion

// findSum(List<int> arr, int index) {
//   if (index < 0) return 0;
//   return arr[index] + findSum(arr, index - 1);
// }

// void main() {
//   List<int> arr = [1, 2, 5, 9, 6, 34, 5];
//   int result = findSum(arr, arr.length - 1);
//   print(result);
// }

//*************************************************************************** */
//*************************************************************************** */

//ARRAY
//largest
// findLargest(List<int> arr) {
//   if (arr.isEmpty) return null;
//   int maxValue = arr[0];
//   for (int i = 0; i < arr.length; i++) {
//     if (arr[i] > maxValue) {
//       maxValue = arr[i];
//     }
//   }
//   return maxValue;
// }

// void main() {
//   List<int> arr = [10, 20, 30, 40, 5, 8, 7, 500];
//   int result = findLargest(arr);
//   print(result);
//}
//----------------------------------------------------------
//array - Linearsearch

// int linearSearch(List<int> arr, int target) {
//   for (int i = 0; i < arr.length; i++) {
//     if (arr[i] == target) {
//       return i;
//     }
//   }
//   return -1;
// }

// void main() {
//   List<int> arr = [10, 2, 35, 8, 9, 78, 54, 22, 100];
//   int target = 9;
//   int result = linearSearch(arr, target);
//   if (result != -1) {
//     print('target is  found at index $result');
//   } else {
//     print('target not found');
//   }
// }
//-------------------------------------------------------------------

//reverse
// reverse(List<int> arr) {
//   int n = arr.length - 1;
//   int temp = 0;
//   for (int i = 0; i < arr.length ~/ 2; i++) {
//     temp = arr[i];
//     arr[i] = arr[n - i];
//     arr[n - i] = temp;
//   }
//   return arr;
// }

// void main() {
//   List<int> arr = [10, 2, 3, 4, 5, 6, 8, 7, 55];
//   List<int> result = reverse(arr);
//   print(result);
// }

//---------------------------------------------------------------------

//secondLargest

// int secondLargest(List<int> arr) {
//   int largest = 0;
//   int slargest = 0;
//   for (int i = 0; i < arr.length; i++) {
//     if (arr[i] > largest) {
//       slargest = largest;
//       largest = arr[i];
//     } else if (arr[i] > slargest && arr[i] < largest) {
//       slargest = arr[i];
//     }
//   }
//   return slargest;
// }

// void main() {
//   List<int> arr = [10, 20, 25, 5, 8, 9, 6, 4, 5, 100];
//   int result = secondLargest(arr);
//   print(result);
// }
//-----------------------------------------------------------------------
//SUM

// sum(List<int> arr) {
//   if (arr.isEmpty) return null;
//   int sum = 0;
//   for (int i = 0; i < arr.length; i++) {
//     sum = sum + arr[i];
//   }
//   return sum;
// }

// void main() {
//   List<int> arr = [3, 4, 5, 9, 10];
//   int result = sum(arr);
//   print(result);
// }
//---------------------------------------------------------------------------
//*************************************************************************** */

//*************************************************************************** */
//*************************************************************************** */

//STACK

// class Stack {
//   late List<int> stack;
//   late int top, size;
//   Stack(this.size) {
//     stack = List<int>.filled(size, 0, growable: false);
//     top = -1;
//   }

//   bool isFull() {
//     return top == size - 1;
//   }

//   bool isEmpty() {
//     return top == -1;
//   }

//   void push(int value) {
//     if (isFull()) {
//       print('Stack is full');
//       return;
//     }
//     top++;
//     stack[top] = value;
//     print('$value is added');
//   }

//   void pop() {
//     if (isEmpty()) {
//       print('Stack is empty');
//       return;
//     }
//     int value = stack[top];
//     top--;
//     print('$value is removed');
//   }

//   void peek() {
//     if (isEmpty()) {
//       print('Empty');
//     } else {
//       print('top value is: ${stack[top]}');
//     }
//   }

//   void deleteMiddleElement() {
//     int middle = stack.length ~/ 2;
//     List<int> tempStack = [];
//     while (top > middle) {
//       tempStack.add(stack[top]);
//       pop();
//     }
//     print('Middle element ${stack[top]} is removed');
//     pop();
//     while (tempStack.isNotEmpty) {
//       push(tempStack.removeLast());
//     }
//   }
// }

// void main() {
//   Stack obj = Stack(5);
//   obj.push(10);
//   obj.push(5);
//   obj.push(54);
//   obj.push(56);
//   obj.push(99);
//   obj.peek();
//   print('');

//   obj.deleteMiddleElement();
//   obj.peek();
//   print('');
// }

//LINEAR SEARCH

// int linearSearch(List<int> list1, int target) {
//   for (int i = 0; i < list1.length; i++) {
//     if (list1[i] == target) {
//       return i;
//     }
//   }
//   return -1;
// }

// void main() {
//   List<int> numbers = [10, 20, 5, 88, 74, 46, 20];
//   int target = 88;
//   int result = linearSearch(numbers, target);

//   if (result != -1) {
//     print('Element found at index: $result');
//   } else {
//     print('Not found');
//   }
// }

//BINARY SEARCH

// int binarySearch(List<int> list1, int target) {
//   int left = 0;
//   int right = list1.length;

//   while (left < right) {
//     int mid = (left + right) ~/ 2;

//     if (list1[mid] == target) {
//       return mid;
//     } else if (target > list1[mid]) {
//       left = mid + 1;
//     } else {
//       right = mid - 1;
//     }
//   }
//   return -1;
// }

// void main() {
//   List<int> list1 = [10, 20, 30, 40, 50, 60, 70, 80, 90];
//   int target = 50;
//   int result = binarySearch(list1, target);
//   if (result != -1) {
//     print('Target value found in index $result');
//   } else {
//     print('Not found');
//   }
// }

//LINKEDLIST
//append
//------------------------------------------------

// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class LinkedList {
//   Node? head = null, tail = null;
//   append(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

//   display() {
//     Node? current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   LinkedList obj = LinkedList();
//   obj.append(10);
//   obj.append(60);
//   obj.append(22);
//   obj.display();
// }

//array to linkedList
//------------------------------
// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class LinkedList {
//   Node? head;
//   Node? tail;
//   void append(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

//   display() {
//     Node? current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   List<int> arr = [10, 20, 25, 26, 88, 78, 66];
//   LinkedList obj = LinkedList();
//   for (int nums in arr) {
//     obj.append(nums);
//   }
//   obj.display();
// }
//***************************************************************** */

// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class LinkedList {
//   Node? head;
//   Node? tail;
//   void append(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

//   display() {
//     Node? current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }

//   deletaAtValue(int value) {
//     Node? current = head;
//     if (head?.data == null) {
//       head = head?.next;
//     }
//     while (current?.next != null && current?.next?.data != value) {
//       current = current?.next;
//     }
//     current?.next = current.next?.next;
//   }

//   removeDuplicate() {
//     Node? current = head;
//     while (current != null && current.next != null) {
//       if (current.data == current.next!.data) {
//         //skip duplicate nodes
//         current.next = current.next!.next;
//       } else {
//         //Move to next node
//         current = current.next;
//       }
//     }
//   }

// //remove duplicates not adj

//   removeDuplicateNotadj() {
//     if (head == null) return;
//     Set<int> seen = {};
//     Node? current = head;
//     seen.add(current!.data); //Add the first node's data to set

//     while (current?.next != null) {
//       if (seen.contains(current?.next!.data)) {
//         //Duplicate found,skip the node
//         current?.next = current.next!.next;
//       } else {
//         //Unique value,add to the set and move to next node
//         seen.add(current!.next!.data);
//         current = current.next!;
//       }
//     }
//     tail = current; //update tail if needed
//   }

//   remove() {
//     if (head == null) return;
//     Set<int> seen = {};
//     Node? current = head;
//     seen.add(current!.data);

//     while (current.next != null) {
//       if (seen.contains(current.next?.data)) {
//         current.next = current.next?.next;
//       }
//     }
//   }
// }

// void main() {
//   LinkedList obj = LinkedList();
//   List<int> arr = [2, 22, 54, 74, 89, 20, 100, 22, 74];
//   for (int num in arr) {
//     obj.append(num);
//   }
//   obj.display();

//   print('delete......');
//   obj.deletaAtValue(89);
//   obj.display();
//   print('removing duplicates....');
//   obj.removeDuplicateNotadj();
//   obj.display();
// }

//************************************************************************************* */
//************************************************************************************* */

//Graph

//Linked List

// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class LinkedList {
//   Node? head;
//   Node? tail;
//   void append(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

//   deleteValue(int value) {
//     Node? current = head;
//     if (head?.data == null) {
//       head = head?.next;
//     }
//     while (current?.next != null && current?.next?.data != value) {
//       current = current?.next;
//     }
//     current?.next = current.next?.next;
//   }

// //remove duplicate
//   removeDuplicate() {
//     if (head == null) return;
//     Set<int> seen = {};
//     Node? current = head;
//     seen.add(current!.next!.data);
//     while (current?.next != null) {
//       if (seen.contains(current?.next?.data)) {
//         current?.next = current.next?.next;
//       } else {
//         seen.add(current!.next!.data);
//         current = current.next!;
//       }
//     }
//   }

//   display() {
//     Node? current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   List<int> arr = [10, 20, 55, 75, 86, 5, 5, 5];
//   LinkedList obj = LinkedList();
//   for (int num in arr) {
//     obj.append(num);
//   }
//   obj.display();
//   print('deleteing...');
//   obj.deleteValue(75);
//   obj.display();
//   print('removing dup');
//   obj.removeDuplicate();
//   obj.display();
// }

// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class LinkedList {
//   Node? head;
//   Node? tail;
//   void append(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

//   display() {
//     Node? current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   LinkedList obj = LinkedList();
//   obj.append(10);
//   obj.append(20);
//   obj.append(85);
//   obj.display();
// }

//MERGE SORT
// List<int> mergeSort(List<int> array) {
//   if (array.length <= 1) {
//     return array;
//   }
//   int mid = array.length ~/ 2;

//   // Split the array into left and right halves
//   List<int> left = array.sublist(0, mid);
//   List<int> right = array.sublist(mid);

//   // Recursively sort the left and right halves
//   List<int> leftArray = mergeSort(left);
//   List<int> rightArray = mergeSort(right);

//   // Merge the sorted halves and return the result
//   return merge(leftArray, rightArray);
// }

// List<int> merge(List<int> left, List<int> right) {
//   List<int> result = [];

//   // Merge the two sorted arrays
//   while (left.isNotEmpty && right.isNotEmpty) {
//     if (left[0] <= right[0]) {
//       result.add(left.removeAt(0));
//     } else {
//       result.add(right.removeAt(0));
//     }
//   }

//   // Append any remaining elements from left or right
//   return result + left + right;
// }

// void main() {
//   List<int> array = [5, 7, 8, 9, 4, 6, 5, 10, 7];
//   print(mergeSort(array));
// }

// List<int> mergeSort(List<int> array) {
//   if (array.length <= 1) return array;
//   int mid = array.length ~/ 2;
//   List<int> left = array.sublist(0, mid);
//   List<int> right = array.sublist(mid);
//   List<int> leftArray = mergeSort(left);
//   List<int> rightArray = mergeSort(right);
//   return merge(leftArray, rightArray);
// }

// List<int> merge(List<int> left, List<int> right) {
//   List<int> result = [];
//   while (left.isNotEmpty && right.isNotEmpty) {
//     if (left[0] <= right[0]) {
//       result.add(left.removeAt(0));
//     } else {
//       result.add(right.removeAt(0));
//     }
//   }
//   return result + left + right;
// }

// void main() {
//   List<int> array = [5, 7, 8, 9, 4, 6, 5, 10, 7];
//   print(mergeSort(array));
// }
//**-***************************************************************** */

// class TreeNode {
//   int value;
//   TreeNode? left;
//   TreeNode? right;

//   TreeNode(this.value);
// }

// class BinarySearchTree {
//   TreeNode? root;

//   void insert(int value) {
//     TreeNode node = TreeNode(value);
//     if (root == null) {
//       root = node;
//     } else {
//       _insertNode(root, node);
//     }
//   }

//   void _insertNode(TreeNode? root, TreeNode node) {
//     if (node.value < root!.value) {
//       if (root.left == null) {
//         root.left = node;
//       } else {
//         _insertNode(root.left, node);
//       }
//     } else {
//       if (root.right == null) {
//         root.right = node;
//       } else {
//         _insertNode(root.right, node);
//       }
//     }
//   }

//   TreeNode findMax(TreeNode? root) {
//     while (root?.right != null) {
//       root = root?.right;
//     }
//     return root!;
//   }

//   int? secondLargest(TreeNode? root) {
//     if (root == null || (root.left == null && root.right == null)) {
//       return null; // No second largest value exists
//     }

//     TreeNode? parent;
//     TreeNode? current = root;

//     // Traverse to the rightmost node
//     while (current?.right != null) {
//       parent = current;
//       current = current?.right;
//     }

//     // If the rightmost node has a left subtree, find the max in that subtree
//     if (current?.left != null) {
//       return findMax(current?.left).value;
//     }

//     // Otherwise, the parent of the rightmost node is the second largest
//     return parent?.value;
//   }
// }

// void main() {
//   BinarySearchTree list = BinarySearchTree();

//   list.insert(9);
//   list.insert(8);
//   list.insert(77);
//   list.insert(6);
//   list.insert(55);
//   list.insert(44);
//   list.insert(22);

//   print(list.secondLargest(list.root)); // Output: 55
// }

//************************************************************************ */

//Linked List

// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class LinkedList {
//   Node? head;
//   Node? tail;

//   //append
//   void append(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

// //delete value
//   deleteValue(int value) {
//     Node? current = head;
//     if (head?.data == null) {
//       head = head?.next;
//     }
//     while (current?.next != null && current?.next?.data != value) {
//       current = current?.next;
//     }
//     current?.next = current.next?.next;
//   }

// //remove duplicate
//   removeDuplicate() {
//     if (head == null) return;
//     Set<int> seen = {};
//     Node? current = head;
//     seen.add(current!.next!.data);
//     while (current?.next != null) {
//       if (seen.contains(current?.next?.data)) {
//         current?.next = current.next?.next;
//       } else {
//         seen.add(current!.next!.data);
//         current = current.next!;
//       }
//     }
//   }

// //delete Middle
//   void deleteMiddle() {
//     Node? fast = head;
//     Node? slow = head;
//     Node? prev;
//     while (fast?.next != null) {
//       fast = fast?.next?.next;
//       prev = slow;
//       slow = slow?.next;
//     }
//     prev!.next = slow!.next;
//   }

// //display
//   display() {
//     Node? current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   List<int> arr = [10, 20, 55, 75, 86, 5, 5, 45, 5];
//   LinkedList obj = LinkedList();
//   for (int num in arr) {
//     obj.append(num);
//   }
//   obj.display();
//   print('deleteing...');
//   obj.deleteValue(75);
//   obj.display();
//   print('removing dup');
//   obj.removeDuplicate();
//   obj.display();
//   print('delete middle...');
//   obj.deleteMiddle();
//   obj.display();
// }



