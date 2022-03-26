class PembeliModel {
  bool? success;
  String? message;
  List<Data>? data;

  PembeliModel({required this.success, required this.message, required this.data});

  PembeliModel.fromJson(Map<String, dynamic> json) {
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
  int? id;
  String? nama_pembeli;
  String? alamat;
  String? no_hp;
  String? email;
  String? createdAt;
  String? updatedAt;

  Data(
      {required this.id,
      required this.nama_pembeli,
      required this. alamat,
      required this. no_hp,
      required this. email,
      required this.createdAt,
      required this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama_pembeli = json['nama_pembeli'];
    alamat = json['alamat'];
    no_hp = json['no_hp'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama_pembeli'] = this.nama_pembeli;
    data['alamat'] = this.alamat;
    data['no_hp'] = this.no_hp;
    data['email'] = this.email;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
