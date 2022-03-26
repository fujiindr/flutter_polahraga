import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:p_alat_olahraga/controller_bindings.dart';
import 'package:p_alat_olahraga/screen/kategori_scree.dart';
// import 'package:p_alat_olahraga/screen/user_screen.dart';
import 'splashscreen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: ControllerBindings(),
        debugShowCheckedModeBanner: false,
        home: SplashScreenPage(
          navigateRoute: const KategoriScreen(),
        ));
  }
}
