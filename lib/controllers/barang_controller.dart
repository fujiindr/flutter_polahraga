import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:p_alat_olahraga/services/barang_services.dart';
import 'package:p_alat_olahraga/models/barang_model.dart';

import '../models/barang_model.dart';

class BarangController extends GetxController {
  var barangList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBarangData();
  }

  void fetchBarangData() async {
    try {
      isLoading(true);
      var barangs = await BarangService.fetchBarangData();
      var barangList;
      barangList.value = barangs.data as List<Data>;
    } finally {
      isLoading(false);
    }
  }
}
