import 'dart:io';

class DecimalConverter {
  void convert(int decimal) {
    String binary = decimal.toRadixString(2); // Konversi ke biner
    String octal = decimal.toRadixString(8); // Konversi ke oktal
    String hexadecimal = decimal.toRadixString(16).toUpperCase(); // Konversi ke heksadesimal

    print("Hasil nilai biner = $binary");
    print("Hasil nilai oktal = $octal");
    print("Hasil nilai heksadesimal = $hexadecimal");
  }
}class PalindromeChecker {
  void checkPalindrome(String sentence) {
    String reversed = sentence.split('').reversed.join(); // Membalik kalimat
    print("Hasil = $reversed");

    if (sentence == reversed) {
      print("Palindrom");
    } else {
      print("Bukan palindrom");
    }
  }
}void main() {
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
