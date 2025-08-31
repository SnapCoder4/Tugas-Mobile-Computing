import 'dart:io';

void main() {
  stdout.write(
    'masukan angka yang mau anda masukan: ',
  ); // untuk input angka yang ingin dimasukkan
  String? inputAngka = stdin.readLineSync();

  int angka = int.parse(inputAngka!);

  int total = 0;
  List<int> deret = [];

  if (angka % 2 == 0 && angka <= 20) {
    for (int i = angka; i <= 20; i += 2) {
      total += i;
      deret.add(i);
    }
    print("${deret.join(' + ')} = $total");
  } else {
    for (int i = angka; i < 20; i += 2) {
      total += i;
      deret.add(i);
    }
    print("${deret.join(' + ')} = $total");
  }
}
