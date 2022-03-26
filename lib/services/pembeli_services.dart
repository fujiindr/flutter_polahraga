import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/pembeli_model.dart';

class PembeliService {
  static Future<PembeliModel> fetchPembeliData() async {
    final response = await http
        .get(Uri.parse('https://penjualanalatolahraga.herokuapp.com/api/pembeli'));

    if (response.statusCode == 200) {
      var data = response.body;
      return PembeliModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
