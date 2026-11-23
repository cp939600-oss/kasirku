abstract class Produk {
  final String kode;
  String nama;
  String kategori;
  double _harga;
  int _stok;
  bool tersedia;
  Produk(this.kode, this.nama, this.kategori, this._harga, this._stok)
      : tersedia = _stok > 0;
  Produk.baru(String kode, String nama, String kategori, double harga)
      : this(kode, nama, kategori, harga, 0);
  Produk.restok(String kode, String nama, String kategori, double harga, int
  stokAwal)
      : this(kode, nama, kategori, harga, stokAwal);
// Getter: cara BACA _harga dari luar class.
  double get harga => _harga;
// Setter: cara UBAH _harga dari luar class, sekaligus tempat validasi.
  set harga(double nilai) {
    if (nilai < 0) throw ArgumentError('Harga tidak boleh negatif');
    _harga = nilai;
  }
  int get stok => _stok;
// ... method tampilkanInfo, tambahStok, aturDiskon, cetakStruk dari pertemuan 3
// tetap ada di sini, sesuaikan referensi 'harga'/'stok' jadi getter di
  double hitungPajak();
}