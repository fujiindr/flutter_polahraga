import 'package:get/instance_manager.dart';
import 'package:p_alat_olahraga/controllers/kategori_controller.dart';
import 'package:p_alat_olahraga/controllers/pembeli_controller.dart';
import 'package:p_alat_olahraga/controllers/transaksi_controller.dart';

// import 'controllers/album_controller.dart';
// import 'controllers/user_controller.dart';
import 'controllers/barang_controller.dart';
import 'controllers/kategori_controller.dart';
import 'controllers/pembeli_controller.dart';
import 'controllers/transaksi_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    // Get.put<AlbumController>(AlbumController());
    // Get.put<UserController>(UserController());
    Get.put<BarangController>(BarangController());
    Get.put<PembeliController>(PembeliController());
    Get.put<KategoriController>(KategoriController());
    Get.put<TransaksiController>(TransaksiController());
  }
}
