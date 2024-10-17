import 'package:demo_92024/app/controllers/home_controller.dart';
import 'package:demo_92024/app/ui/pages/realtimeview_page/realtime_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/dialogsns_controller.dart';

class DialogsnsPage extends GetView<DialogsnsController> {
  const DialogsnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Wrap(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.warning, size: 35, color: Colors.yellow),
              SizedBox(width: 5),
              Text("상황발생",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              SizedBox(width: 5),
              Icon(Icons.warning, size: 35, color: Colors.yellow),
            ]),
            Text("발생 시간:",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            Text("2023/08/10 10:45:30",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Row(children: [
                              Image.asset('assets/images/room1.png',
                                  width: 10, height: 10),
                              Text("성남호", style: TextStyle(color: Colors.white))
                            ]))),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Row(children: [
                              Image.asset('assets/images/room2.png',
                                  width: 10, height: 10),
                              Text("판교호", style: TextStyle(color: Colors.black))
                            ]))),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Row(children: [
                              Image.asset('assets/images/room3.png',
                                  width: 10, height: 10),
                              Text("분당호", style: TextStyle(color: Colors.black))
                            ])))
                  ]),
                  Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/room1.png',
                              width: 10,
                              height: 10,
                            ),
                            Text(
                              "방1",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Row(children: [
                              Image.asset('assets/images/room2.png',
                                  width: 10, height: 10),
                              Text("방2", style: TextStyle(color: Colors.black))
                            ]))),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Row(children: [
                              Image.asset('assets/images/room3.png',
                                  width: 10, height: 10),
                              Text(
                                "방3",
                                style: TextStyle(color: Colors.black),
                              )
                            ])))
                  ])
                ]),
            Obx(() => Image.asset(controller.currentData.value.imagePath,
                fit: BoxFit.contain)),
            SizedBox(height: 5),
            Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2, color: Colors.grey)),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: NeverScrollableScrollPhysics(),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(imagePaths.length, (index) {
                          return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Image.asset(imagePaths[index],
                                  width: 40, height: 40));
                        })))),
            SizedBox(height: 5),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Text("소화 화면으로",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("이동하시겠습니까?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
            ]),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RealtimePage()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        minimumSize: Size(100, 50)),
                    child: Text("YES",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))),
                ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        minimumSize: Size(100, 50)),
                    child: Text("NO",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))),
              ],
            ),
          ],
        ),
      ],
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

/* 
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
*/