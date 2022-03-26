import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/transaksi_model.dart';

class TransaksiService {
  static Future<TransaksiModel> fetchTransaksiData() async {
    final response = await http
        .get(Uri.parse('https://penjualanalatolahraga.herokuapp.com/api/transaksi'));

    if (response.statusCode == 200) {
      var data = response.body;
      return TransaksiModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
