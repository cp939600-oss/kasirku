class Alat {
  final String kode;
  String nama;
  String merek;
  int stok;
  bool tersedia;

  // Constructor utama
  Alat(this.kode, this.nama, this.merek, int stok)
      : stok = stok,
        tersedia = stok > 0;

  // Named constructor
  Alat.baru(String kode, String nama)
      : this(kode, nama, 'Tanpa Merek', 1);

  // Menampilkan informasi alat
  String tampilkanInfo(String prefix) {
    return '$prefix Nama: $nama, Merek: $merek, Stok: $stok';
  }

  // Menambahkan stok
  void tambahStok(int jumlah, [String? catatan]) {
    stok += jumlah;
    tersedia = stok > 0;

    if (catatan != null) {
      print('Catatan: $catatan');
    }
  }

  // Menyewakan alat
  bool sewa({required int jumlah, String? penyewa}) {
    if (stok >= jumlah && jumlah > 0) {
      stok -= jumlah;
      tersedia = stok > 0;

      print('Penyewaan berhasil oleh ${penyewa ?? "Tanpa Nama"}');
      return true;
    } else {
      print('Penyewaan gagal, stok tidak mencukupi.');
      return false;
    }
  }
}