class TransaksiModel {
  bool? success;
  String? message;
  List<Data>? data;

  TransaksiModel({this.success, this.message, this.data});

  TransaksiModel.fromJson(Map<String, dynamic> json) {
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
  String? namaPembeli;
  String? namaBarang;
  String? tanggalBeli;
  String? harga;
  String? jumlah;
  String? total;

  Data(
      {required this.namaPembeli,
      required this.namaBarang,
      required this.tanggalBeli,
      required this.harga,
      required this.jumlah,
      required this.total});

  Data.fromJson(Map<String, dynamic> json) {
    namaPembeli = json['nama_pembeli'];
    namaBarang = json['nama_barang'];
    tanggalBeli = json['tanggal_beli'];
    harga = json['harga'];
    jumlah = json['jumlah'];
    total = json['total'];
  }

  get namaKategori => null;

  get stok => null;

  get deskripsi => null;

  get cover => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama_pembeli'] = this.namaPembeli;
    data['nama_barang'] = this.namaBarang;
    data['tanggal_beli'] = this.tanggalBeli;
    data['harga'] = this.harga;
    data['jumlah'] = this.jumlah;
    data['total'] = this.total;
    return data;
  }
}
