import 'package:demo_92024/app/controllers/home_controller.dart';
import 'package:demo_92024/app/routes/app_routes.dart';
import 'package:demo_92024/app/ui/global_widgets/global_badge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Room1Page extends StatefulWidget {
  const Room1Page({super.key});
  @override
  _Room1PageState createState() => _Room1PageState();
}

class _Room1PageState extends State<Room1Page> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Obx(
                      () => Switch(
                          value: controller.isAutoMode.value,
                          onChanged: (bool newValue) {
                            controller.toogleSwitch(newValue);
                          },
                          activeColor: Colors.blue,
                          inactiveThumbColor: Colors.grey,
                          inactiveTrackColor: Colors.white),
                    ),
                    Text('수동 모드',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))
                  ]),
                  Column(
                    children: [
                      Row(children: [
                        SizedBox(child: Image.asset('assets/images/room1.png')),
                        SizedBox(width: 10),
                        Text('Room 1',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ]),
                      Row(children: [
                        SizedBox(
                          child: Image.asset('assets/images/room2.png'),
                        ),
                        SizedBox(width: 10),
                        Text('Room 2',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ]),
                      Row(children: [
                        SizedBox(child: Image.asset('assets/images/room3.png')),
                        SizedBox(width: 10),
                        Text('Room 3',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ])
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
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Switch(
                      value: isExpanded,
                      activeColor: Colors.blue,
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.white,
                      onChanged: (bool expanded) {
                        setState(() {
                          isExpanded = expanded;
                        });
                      }),
                  Text('센서 보기',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold))
                ])),
            AnimatedContainer(
              duration: Duration(milliseconds: 5000),
              curve: Curves.fastLinearToSlowEaseIn,
              child: Visibility(
                visible: isExpanded,
                child: Wrap(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 215, 208, 208),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GlobalBadge(
                                      showBadge: true,
                                      yourAction: () =>
                                          Get.toNamed(AppRoutes.camera),
                                      child: Image.asset('assets/images/1.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.contain)),
                                  GlobalBadge(
                                      showBadge: false,
                                      yourAction: () =>
                                          Get.toNamed(AppRoutes.camera),
                                      child: Image.asset('assets/images/2.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.contain)),
                                  GlobalBadge(
                                      showBadge: true,
                                      yourAction: () =>
                                          Get.toNamed(AppRoutes.record),
                                      child: Image.asset('assets/images/3.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.contain)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GlobalBadge(
                                      showBadge: false,
                                      yourAction: () =>
                                          Get.toNamed(AppRoutes.spark),
                                      child: Image.asset('assets/images/4.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.contain)),
                                  GlobalBadge(
                                      showBadge: true,
                                      yourAction: () =>
                                          Get.toNamed(AppRoutes.smoke),
                                      child: Image.asset('assets/images/5.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.contain)),
                                  GlobalBadge(
                                      showBadge: true,
                                      yourAction: () =>
                                          Get.toNamed(AppRoutes.degree),
                                      child: Image.asset('assets/images/6.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.contain))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*           TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      /* contentPadding: EdgeInsets.zero, */
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        side: BorderSide(color: Colors.grey, width: 2.5),
                      ),
                      content: const DialogsnsPage(),
                    );
                  },
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(Colors.blue),
              ),
              child: Text(
                'Pop Dialog from sns',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ...List.generate(
            5,
            (index) => ElevatedButton(
            onPressed: () => controller.setLevel(index + 1),
            child: Text('Set Level ${index + 1}'),
            ),
            ), */