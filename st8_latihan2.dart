import 'dart:io';

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

  // Mengecek apakah stack kosong
  bool isEmpty() {
    return _stack.isEmpty;
  }
}

class DecimalConverter {
  void convert(int decimal) {
    var binaryStack = Stack<int>();
    var octalStack = Stack<int>();
    var hexStack = Stack<String>();

    // Konversi ke biner
    int temp = decimal;
    while (temp > 0) {
      binaryStack.push(temp % 2);
      temp ~/= 2;
    }

    // Konversi ke oktal
    temp = decimal;
    while (temp > 0) {
      octalStack.push(temp % 8);
      temp ~/= 8;
    }

    // Konversi ke heksadesimal
    temp = decimal;
    while (temp > 0) {
      int remainder = temp % 16;
      hexStack.push(remainder < 10 ? remainder.toString() : String.fromCharCode(55 + remainder));
      temp ~/= 16;
    }

    // Menampilkan hasil konversi
    print("Hasil nilai biner = ${_stackToString(binaryStack)}");
    print("Hasil nilai oktal = ${_stackToString(octalStack)}");
    print("Hasil nilai heksadesimal = ${_stackToString(hexStack)}");
  }

  String _stackToString<T>(Stack<T> stack) {
    String result = "";
    while (!stack.isEmpty()) {
      result += stack.pop().toString();
    }
    return result;
  }
}

class PalindromeChecker {
  void checkPalindrome(String sentence) {
    var stack = Stack<String>();

    // Menambahkan setiap karakter ke stack
    for (var ch in sentence.split('')) {
      stack.push(ch);
    }

    // Membalik kalimat menggunakan stack
    String reversed = "";
    while (!stack.isEmpty()) {
      reversed += stack.pop();
    }

    print("Hasil = $reversed");

    // Mengecek apakah kalimat adalah palindrom
    if (sentence == reversed) {
      print("Palindrom");
    } else {
      print("Bukan palindrom");
    }
  }
}

void main() {
  // Bagian 1: Konversi Desimal ke Biner, Oktal, dan Heksadesimal
  print("=== Konversi Desimal ===");
  stdout.write("Masukkan nilai desimal: ");
  int decimal = int.parse(stdin.readLineSync()!);
  var converter = DecimalConverter();
  converter.convert(decimal);

  print("\n=== Palindrom Checker ===");
  // Bagian 2: Membalik Kalimat dan Mengecek Palindrom
  stdout.write("Masukkan kalimat: ");
  String sentence = stdin.readLineSync()!;
  var palindromeChecker = PalindromeChecker();
  palindromeChecker.checkPalindrome(sentence);
}
