class BarangModel {
  bool? success;
  String? message;
  List<Data>? data;

  BarangModel({required this.success,required this.message,required this.data,});

  BarangModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? namaBarang;
  String? namaKategori;
  int? stok;
  String? deskripsi;
  String? harga;
  String? cover;

  Data(
      {required this.namaBarang,
      required this.namaKategori,
      required this.stok,
      required this.deskripsi,
      required this.harga,
      required this.cover});

  Data.fromJson(Map<String, dynamic> json) {
    namaBarang = json['nama_barang'];
    namaKategori = json['nama_kategori'];
    stok = json['stok'];
    deskripsi = json['deskripsi'];
    harga = json['harga'];
    cover = json['cover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama_barang'] = this.namaBarang;
    data['nama_kategori'] = this.namaKategori;
    data['stok'] = this.stok;
    data['deskripsi'] = this.deskripsi;
    data['harga'] = this.harga;
    data['cover'] = this.cover;
    return data;
  }
}
