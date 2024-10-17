import 'package:demo_92024/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/prerecord_controller.dart';

class PrerecordPage extends GetView<PrerecordController> {
  const PrerecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
              onPressed: () => Get.offAllNamed(AppRoutes.home)),
          elevation: 0,
          backgroundColor: Colors.transparent),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                  color: Colors.brown,
                  child: Center(
                      child: Text('Your Prerecord is here',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold))))),
          Expanded(
            flex: 2,
            child: Scrollbar(
              interactive: false,
              radius: Radius.circular(90),
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 3, color: Colors.blue)),
                      child: GestureDetector(
                          onTap: () => print('2024.10.10 prerecord'),
                          child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text("2024.10.10",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
