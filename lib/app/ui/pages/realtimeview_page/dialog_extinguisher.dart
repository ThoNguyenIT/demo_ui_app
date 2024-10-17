import 'package:demo_92024/app/controllers/realtime_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogExtinguisher extends StatelessWidget {
  const DialogExtinguisher({super.key});

  @override
  Widget build(BuildContext context) {
    final RealtimeController controller = Get.put(RealtimeController());
    return Wrap(
      children: [
        Column(
          children: [
            SizedBox(
                height: 200,
                width: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/imageSlideshow/home.png',
                      fit: BoxFit.cover,
                    ))),
            SizedBox(height: 5),
            Center(
                child: Text('정말로 끄시겠습니까?',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            SizedBox(height: 5),
            Wrap(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          controller.operatedExtinguisher;
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 50),
                            backgroundColor: Color.fromARGB(255, 255, 17, 0)),
                        child: Row(children: [
                          Image.asset('assets/icons/extinguisher.png',
                              width: 35, height: 35),
                          SizedBox(width: 10),
                          Text("네",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ])),
                    ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 50),
                            backgroundColor: Colors.grey),
                        child: Text("아니오",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)))
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
