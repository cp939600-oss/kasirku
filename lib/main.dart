import 'models/alat.dart';

void main() {
  // Membuat objek alat
  Alat alat1 = Alat('A001', 'Kamera Mirrorless', 'Sonex', 3);
  Alat alat2 = Alat.baru('A002', 'Tripod');

  // Menampilkan informasi
  print(alat1.tampilkanInfo('Info Alat:'));

  // Menambahkan stok
  alat1.tambahStok(2, 'pembelian baru');

  // Melakukan penyewaan
  bool hasil1 = alat2.sewa(jumlah: 1, penyewa: 'Dina');

  bool hasil2 = alat2.sewa(jumlah: 1);

  // Menampilkan hasil penyewaan
  print('Hasil penyewaan pertama: $hasil1');
  print('Hasil penyewaan kedua: $hasil2');
}