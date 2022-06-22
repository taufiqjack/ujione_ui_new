class ProductModel {
  int? id;
  String? nama;
  String? kodeBarang;
  int? jenis;
  int? hargaSewa;
  String? gambar;
  int? satuan;

  ProductModel({
    this.id,
    this.nama,
    this.kodeBarang,
    this.jenis,
    this.hargaSewa,
    this.gambar,
    this.satuan,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    kodeBarang = json['kodeBarang'];
    jenis = json['jenis'];
    hargaSewa = json['hargaSewa'];
    gambar = json['gambar'];
    satuan = json['satuan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['kodeBarang'] = kodeBarang;
    data['jenis'] = jenis;
    data['hargaSewa'] = hargaSewa;
    data['gambar'] = gambar;
    data['satuan'] = satuan;
    return data;
  }
}
