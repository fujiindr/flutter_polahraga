import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:p_alat_olahraga/services/pembeli_services.dart';

import '../models/pembeli_model.dart';

class PembeliController extends GetxController {
  var pembeliList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPembeliData();
  }

  void fetchPembeliData() async {
    try {
      isLoading(true);
      var pembelis = await PembeliService.fetchPembeliData();
      pembeliList.value = pembelis.data as List<Data>;
    } finally {
      isLoading(false);
    }
  }
}
