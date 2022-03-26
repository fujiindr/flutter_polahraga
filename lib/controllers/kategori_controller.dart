import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:p_alat_olahraga/services/kategori_services.dart';

import '../models/kategori_model.dart';

class KategoriController extends GetxController {
  var kategoriList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchKategoriData();
  }

  void fetchKategoriData() async {
    try {
      isLoading(true);
      var kategoris = await KategoriService.fetchKategoriData();
      kategoriList.value = kategoris.data as List<Data>;
    } finally {
      isLoading(false);
    }
  }
}
