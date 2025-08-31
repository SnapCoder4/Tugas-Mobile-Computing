import 'dart:io';

void main() {
  String id_pegawai, nama, status;
  double gaji, bonus = 0, tunjangan = 0, total_gaji = 0;

  stdout.write('Masukkan ID Pegawai : ');
  id_pegawai = stdin.readLineSync()!;

  stdout.write('Masukkan Nama : ');
  nama = stdin.readLineSync()!;

  stdout.write('Masukkan Nominal Gaji : ');
  gaji = double.parse(stdin.readLineSync()!);

  stdout.write('Status Sekarang (M/TM) : ');
  status = stdin.readLineSync()!;

  bonus = 0.1 * gaji;
  if (status.toUpperCase() == 'M') {
    tunjangan = 0.08 * gaji;
  } else if (status.toUpperCase() == 'TM') {
    tunjangan = 0.05 * gaji;
  } else {
    print('Input Status Tidak Valid');
  }
  total_gaji = gaji + bonus + tunjangan;

  print('ID Pegawai : $id_pegawai');
  print('Nama       : $nama');
  print('Gaji       : $gaji');
  print('Status     : ${status.toUpperCase()}');
  print('Bonus      : $bonus');
  print('Tunjangan  : $tunjangan');
  print('Total Gaji : $total_gaji');
}
