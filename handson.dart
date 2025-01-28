import 'dart:io';

void main() {
  try {
    stdout.write('Masukkan nama kamu : ');
    String nama = stdin.readLineSync()!;
    stdout.write('Kamu sekarang semester berapa? : ');
    int smt = int.parse(stdin.readLineSync()!);
    stdout.write('Masukkan IPK kamu : ');
    double ipk = double.parse(stdin.readLineSync()!);
    print('');
    print('');

    if (smt < 1 || smt > 14) {
      print('Data semester tidak valid');
      return;
    }
    if (ipk < 0 || ipk > 4) {
      print('Masukkan IPK dalam rentang 0-4 dan format x.xx');
      return;
    }
    if (ipk >= 3.75) {
      print("Selamat $nama, anda mendapatkan IPK yang sempurna");
    } else if (ipk >= 3.5) {
      print("Selamat $nama, anda mendapatkan IPK yang sangat baik");
    } else if (ipk >= 3.0) {
      print("Selamat $nama, anda mendapatkan IPK yang baik");
    } else if (ipk >= 2.75) {
      print("Maaf $nama, anda mendapatkan IPK yang cukup");
    } else {
      print("Maaf $nama, anda mendapatkan IPK yang sangat buruk");
    }

    Map<String, dynamic> datamahasiswa = {
      'Nama': nama,
      'Semester': smt,
      'IPK': ipk
    };
    cetakDataMahasiswa(datamahasiswa);

  } catch (e) {
    print('Terjadi error mohon periksa kembali data anda $e');
  }
}
void cetakDataMahasiswa(Map<String, dynamic> data) {
  print('\nData Kamu Adalah:');
  data.forEach((key, value) {
    print('$key: $value');
  });
}