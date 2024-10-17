import 'package:demo_92024/app/bindings/camera_binding.dart';
import 'package:demo_92024/app/bindings/degree_binding.dart';
import 'package:demo_92024/app/bindings/home_binding.dart';
import 'package:demo_92024/app/bindings/login_binding.dart';
import 'package:demo_92024/app/bindings/optionmenu_binding.dart';
import 'package:demo_92024/app/bindings/prerecord_binding.dart';
import 'package:demo_92024/app/bindings/realtime_binding.dart';
import 'package:demo_92024/app/bindings/smoke_binding.dart';
import 'package:demo_92024/app/bindings/spark_binding.dart';
import 'package:demo_92024/app/routes/app_routes.dart';
import 'package:demo_92024/app/ui/pages/camera_page/camera_page.dart';
import 'package:demo_92024/app/ui/pages/degree_page/degree_page.dart';
import 'package:demo_92024/app/ui/pages/home_page/home_page.dart';
import 'package:demo_92024/app/ui/pages/login_page/login_page.dart';
import 'package:demo_92024/app/ui/pages/optionmenu_page/optionmenu_page.dart';
import 'package:demo_92024/app/ui/pages/prerecord_page/prerecord_page.dart';
import 'package:demo_92024/app/ui/pages/realtimeview_page/realtime_page.dart';
import 'package:demo_92024/app/ui/pages/record_page/record_page.dart';
import 'package:demo_92024/app/ui/pages/smokeview_page/smoke_page.dart';
import 'package:demo_92024/app/ui/pages/spark_page/spark_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.optionmenu,
      page: () => OptionmenuPage(),
      binding: OptionmenuBinding(),
    ),
    GetPage(
      name: AppRoutes.realtime,
      page: () => RealtimePage(),
      binding: RealtimeBinding(),
    ),
    GetPage(
      name: AppRoutes.camera,
      page: () => CameraPage(),
      binding: CameraBinding(),
    ),
    GetPage(
      name: AppRoutes.record,
      page: () => RecordPage(),
      binding: PrerecordBinding(),
    ),
    GetPage(
      name: AppRoutes.prerecord,
      page: () => PrerecordPage(),
      binding: PrerecordBinding(),
    ),
    GetPage(
      name: AppRoutes.spark,
      page: () => SparkPage(),
      binding: SparkBinding(),
    ),
    GetPage(
      name: AppRoutes.smoke,
      page: () => SmokePage(),
      binding: SmokeBinding(),
    ),
    GetPage(
      name: AppRoutes.degree,
      page: () => DegreePage(),
      binding: DegreeBinding(),
    ),
  ];
}
