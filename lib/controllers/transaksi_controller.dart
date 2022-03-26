import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:p_alat_olahraga/services/transaksi_services.dart';

import '../models/transaksi_model.dart';

class TransaksiController extends GetxController {
  var transaksiList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchTransaksiData();
  }

  void fetchTransaksiData() async {
    try {
      isLoading(true);
      var transaksis = await TransaksiService.fetchTransaksiData();
      transaksiList.value = transaksis.data as List<Data>;
    } finally {
      isLoading(false);
    }
  }
}
