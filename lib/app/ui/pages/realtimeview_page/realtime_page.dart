import 'package:demo_92024/app/controllers/home_controller.dart';
import 'package:demo_92024/app/controllers/realtime_controller.dart';
import 'package:demo_92024/app/routes/app_routes.dart';
import 'package:demo_92024/app/ui/pages/realtimeview_page/dialog_extinguisher.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RealtimePage extends GetView<RealtimeController> {
  const RealtimePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();
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
              flex: 4,
              child: Container(
                  color: Colors.cyan,
                  width: double.infinity,
                  child: Center(
                    child: Text('Your Realtime is here',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                  ))),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Row(children: [
                                        Image.asset('assets/images/room1.png',
                                            width: 10, height: 10),
                                        Text(
                                          "성남호",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ]))),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Row(children: [
                                        Image.asset('assets/images/room2.png',
                                            width: 10, height: 10),
                                        Text("판교호",
                                            style:
                                                TextStyle(color: Colors.black))
                                      ]))),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Row(children: [
                                        Image.asset('assets/images/room3.png',
                                            width: 10, height: 10),
                                        Text("분당호",
                                            style:
                                                TextStyle(color: Colors.black))
                                      ])))
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.warning,
                                      size: 30, color: Colors.yellow),
                                  SizedBox(width: 5),
                                  Text("상황발생",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(width: 5),
                                  Icon(Icons.warning,
                                      size: 30, color: Colors.yellow),
                                ],
                              ),
                              Text("발생 시간: 2023/08/10 10:45:30",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Row(children: [
                                        Image.asset('assets/images/room1.png',
                                            width: 10, height: 10),
                                        Text("방1",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ]))),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Row(children: [
                                        Image.asset('assets/images/room2.png',
                                            width: 10, height: 10),
                                        Text("방2",
                                            style:
                                                TextStyle(color: Colors.black))
                                      ]))),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Row(children: [
                                        Image.asset('assets/images/room3.png',
                                            width: 10, height: 10),
                                        Text("방3",
                                            style:
                                                TextStyle(color: Colors.black))
                                      ])))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Center(
                        child: InkWell(
                            onTap: () => controller.toggleActive(),
                            child: Obx(() => Image.asset(
                                controller.currentData.value.imagePath,
                                fit: BoxFit.contain)))),
                    ElevatedButton.icon(
                        onPressed: () => showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                /* contentPadding: EdgeInsets.zero, */
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    side: BorderSide(
                                        color: Colors.grey, width: 2.5)),
                                content: DialogExtinguisher(),
                              );
                            }),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 255, 17, 0)),
                        label: Text('소 화',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        icon: Image.asset('assets/icons/extinguisher.png',
                            width: 20, height: 20)),
                    SizedBox(
                        height: 100,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: imagePaths.length,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Row(children: [
                                Image.asset(imagePaths[index],
                                    fit: BoxFit.contain, width: 80, height: 80),
                              ]);
                            }))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> imagePaths = [
  'assets/images/1.png',
  'assets/images/2.png',
  'assets/images/3.png',
  'assets/images/4.png',
  'assets/images/5.png',
];
