import 'package:demo_92024/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/record_controller.dart';

class RecordPage extends GetView<RecordController> {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
              onPressed: () => Get.offAllNamed(AppRoutes.home)),
          elevation: 0,
          backgroundColor: Colors.transparent),
      body: Column(
        children: [
          Expanded(
              child: Container(
                  color: Colors.brown,
                  child: Center(
                      child: Text('Your record is here',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold))))),
          Expanded(
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
                                border: Border.all(width: 0)),
                            child: GestureDetector(
                                onTap: () => Get.toNamed(AppRoutes.prerecord),
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Row(children: [
                                      Expanded(
                                          child: Text("감지/영상 보기",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      Icon(Icons.arrow_forward_ios_rounded,
                                          size: 25, color: Colors.black)
                                    ])))),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 0)),
                            child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Row(children: [
                                      Expanded(
                                          child: Text("타임랩스 영상 보기",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      Icon(Icons.arrow_forward_ios_rounded,
                                          size: 25, color: Colors.black)
                                    ])))),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 0)),
                            child: GestureDetector(
                                onTap: () => Get.toNamed(AppRoutes.camera),
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Row(children: [
                                      Expanded(
                                          child: Text("열화상 영상 보기",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      Icon(Icons.arrow_forward_ios_rounded,
                                          size: 25, color: Colors.black)
                                    ])))),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 0)),
                            child: GestureDetector(
                                onTap: () => Get.toNamed(AppRoutes.degree),
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Row(children: [
                                      Expanded(
                                          child: Text("온도 그래프 보기",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      Icon(Icons.arrow_forward_ios_rounded,
                                          size: 25, color: Colors.black)
                                    ])))),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 0)),
                            child: GestureDetector(
                                onTap: () => Get.toNamed(AppRoutes.spark),
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Row(children: [
                                      Expanded(
                                          child: Text("불꽃 감지 센서 보기",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      Icon(Icons.arrow_forward_ios_rounded,
                                          size: 25, color: Colors.black)
                                    ])))),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 0)),
                            child: GestureDetector(
                                onTap: () => Get.toNamed(AppRoutes.smoke),
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Row(children: [
                                      Expanded(
                                          child: Text("연기 감지 센서 보기",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      Icon(Icons.arrow_forward_ios_rounded,
                                          size: 25, color: Colors.black)
                                    ])))),
                      ])))
        ],
      ),
    );
  }
}
