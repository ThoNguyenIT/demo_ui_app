import 'package:demo_92024/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      /*theme: ThemeData(primarySwatch: Colors.blue),
      check this one --> https://github.com/hasancse91/flutter_getx_template/tree/master 
      initialBinding: InitialBinding(), : initialBinding: LoginPage(),*/
      initialRoute: AppRoutes.login,
      getPages: AppPages.pages,
    );
  }
}
