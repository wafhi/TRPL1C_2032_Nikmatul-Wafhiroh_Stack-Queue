class Stack<T> {
  final List<T> _stack = [];

  // Menambahkan elemen ke stack
  void push(T element) {
    _stack.add(element);
  }

  // Menghapus elemen terakhir dari stack
  T pop() {
    if (_stack.isEmpty) {
      throw StateError("No elements in the Stack"); // Stack kosong
    } else {
      T lastElement = _stack.last;
      _stack.removeLast();
      return lastElement;
    }
  }

  // Mengembalikan elemen terakhir tanpa menghapusnya
  T top() {
    if (_stack.isEmpty) {
      throw StateError("No elements in the Stack"); // Stack kosong
    } else {
      return _stack.last;
    }
  }

  // Mengecek apakah stack kosong
  bool isEmpty() {
    return _stack.isEmpty;
  }

  // Menampilkan elemen stack sebagai string
  @override
  String toString() => _stack.toString();
}

void main() {
  var stack = Stack<int>();

  // Mengecek apakah stack kosong
  print("Apakah stack kosong? ${stack.isEmpty()}"); // Output: true

  // Menambahkan elemen ke stack
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  stack.push(7);
  print("Isi stack: $stack"); // Output: [1, 2, 3, 4, 5, 7]

  // Menghapus elemen dari stack
  var myNumber = stack.pop();
  print("Elemen pertama yang dihapus: $myNumber"); // Output: 7
  var mySecNumber = stack.pop();
  print("Elemen kedua yang dihapus: $mySecNumber"); // Output: 5

  // Menghapus elemen berikutnya
  print("Elemen berikutnya yang dihapus: ${stack.pop()}"); // Output: 4
  print("Isi stack setelah pop: $stack"); // Output: [1, 2, 3]

  // Mengakses elemen terakhir tanpa menghapusnya
  print("Elemen terakhir di stack: ${stack.top()}"); // Output: 3

  // Mengecek apakah stack kosong
  print("Apakah stack kosong? ${stack.isEmpty()}"); // Output: false
}
