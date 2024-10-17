import 'package:demo_92024/app/routes/app_routes.dart';
import 'package:demo_92024/app/ui/pages/home_page/room1_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          })),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 227, 227, 227),
                    border:
                        Border(left: BorderSide(width: 5, color: Colors.blue))),
                child: TextButton(
                  onPressed: () => Get.toNamed(AppRoutes.optionmenu),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.settings_applications_sharp),
                      Text('설정',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ImageSlideshow(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.2,
                  initialPage: 0,
                  indicatorColor: Colors.blue,
                  indicatorBackgroundColor: Colors.grey,
                  indicatorBottomPadding: 65,
                  autoPlayInterval: 10800000,
                  isLoop: true,
                  children: [
                    Image.asset('assets/images/imageSlideshow/home.png',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/imageSlideshow/home1.png',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/imageSlideshow/home2.png',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/imageSlideshow/home.png',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/imageSlideshow/home1.png',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/imageSlideshow/home2.png',
                        fit: BoxFit.cover),
                  ],
                ),
                Container(
                  color: Colors.transparent,
                  child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    tabs: [
                      Tab(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: MediaQuery(
                                  data: MediaQuery.of(context).copyWith(
                                      textScaler: TextScaler.linear(0.8)),
                                  child: Text("ROOM 1",
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))))),
                      Tab(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: MediaQuery(
                                  data: MediaQuery.of(context).copyWith(
                                      textScaler: TextScaler.linear(0.8)),
                                  child: Text("ROOM 2",
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))))),
                      Tab(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: MediaQuery(
                                  data: MediaQuery.of(context).copyWith(
                                      textScaler: TextScaler.linear(0.8)),
                                  child: Text("ROOM 3",
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))))),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Room1Page(),
                  Center(child: Text('Content for Room2')),
                  Center(child: Text('Content for Room3')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
