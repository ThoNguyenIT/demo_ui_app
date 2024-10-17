import 'package:demo_92024/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/optionmenu_controller.dart';

class OptionmenuPage extends GetView<OptionmenuController> {
  const OptionmenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
            onPressed: () => Navigator.of(context).pop()),
        title: Text('설정',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.white, border: Border.all(width: 0)),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            SizedBox(
                                width: 20,
                                height: 20,
                                child: Image.asset('assets/icons/1.png',
                                    fit: BoxFit.contain)),
                            SizedBox(width: 10),
                            Text('수동 조작 모드',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))
                          ]),
                          Obx(() => Switch(
                              value: controller.isAutoMode.value,
                              onChanged: (bool newValue) {
                                controller.toogleSwitch(newValue);
                              },
                              activeColor: Colors.blue,
                              inactiveThumbColor: Colors.grey,
                              inactiveTrackColor: Colors.white))
                        ]))),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white, border: Border.all(width: 0)),
                child: GestureDetector(
                    onTap: () => print('option 2 was pressed'),
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset('assets/icons/2.png',
                                        fit: BoxFit.contain)),
                                SizedBox(width: 10),
                                Text('선박 이름 변경',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ]),
                              Icon(Icons.arrow_forward_ios,
                                  size: 20, color: Colors.black)
                            ])))),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white, border: Border.all(width: 0)),
                child: GestureDetector(
                    onTap: () => print('option 3 was pressed'),
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset('assets/icons/3.png',
                                        fit: BoxFit.contain)),
                                SizedBox(width: 10),
                                Text('방 이름 변경',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ]),
                              Icon(
                                  size: 20,
                                  Icons.arrow_forward_ios,
                                  color: Colors.black)
                            ])))),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white, border: Border.all(width: 0)),
                child: GestureDetector(
                    onTap: () => print('option 4 was pressed'),
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset('assets/icons/4.png',
                                        fit: BoxFit.contain)),
                                SizedBox(width: 10),
                                Text('날씨 위치 변경',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ]),
                              Icon(
                                  size: 20,
                                  Icons.arrow_forward_ios,
                                  color: Colors.black)
                            ])))),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white, border: Border.all(width: 0)),
                child: GestureDetector(
                    onTap: () => print('option 5 was pressed'),
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset('assets/icons/5.png',
                                        fit: BoxFit.contain)),
                                SizedBox(width: 10),
                                Text('센서 리스트 변경',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ]),
                              Icon(
                                  size: 20,
                                  Icons.arrow_forward_ios,
                                  color: Colors.black)
                            ])))),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white, border: Border.all(width: 0)),
                child: GestureDetector(
                    onTap: () => print('option 6 was pressed'),
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset('assets/icons/6.png',
                                        fit: BoxFit.contain)),
                                SizedBox(width: 10),
                                Text('선박 추가',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ]),
                              Icon(
                                  size: 20,
                                  Icons.arrow_forward_ios,
                                  color: Colors.black)
                            ])))),
          ],
        ),
      ),
    );
  }
}
