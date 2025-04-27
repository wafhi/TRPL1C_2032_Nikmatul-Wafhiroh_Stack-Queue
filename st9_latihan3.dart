import 'dart:collection';

void main() {
  // Membuat objek Queue
  Queue<int> queue = Queue<int>();

  // Menambahkan elemen ke dalam queue
  queue.add(10);
  queue.add(20);
  queue.add(30);
  
  print('Queue setelah menambahkan elemen: $queue');

  // Mengambil elemen pertama (menghapus elemen dari depan queue)
  print('Mengambil elemen pertama: ${queue.removeFirst()}');
  
  // Menampilkan queue setelah penghapusan elemen pertama
  print('Queue setelah removeFirst: $queue');

  // Mengambil elemen terakhir (menghapus elemen dari belakang queue)
  print('Mengambil elemen terakhir: ${queue.removeLast()}');
  
  // Menampilkan queue setelah penghapusan elemen terakhir
  print('Queue setelah removeLast: $queue');
  
  // Mengecek apakah queue kosong
  print('Apakah queue kosong? ${queue.isEmpty}');
  
  // Menambahkan elemen kembali
  queue.add(40);
  queue.add(50);
  print('Queue setelah menambahkan elemen lagi: $queue');
}
