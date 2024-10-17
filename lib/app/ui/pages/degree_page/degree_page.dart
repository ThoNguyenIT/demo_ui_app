import 'package:demo_92024/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../controllers/degree_controller.dart';

class DegreePage extends GetView<DegreeController> {
  const DegreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Get.offAllNamed(AppRoutes.home)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SfCartesianChart(
              primaryXAxis: CategoryAxis(isVisible: false),
              trackballBehavior: TrackballBehavior(
                  enable: true,
                  activationMode: ActivationMode.singleTap,
                  lineWidth: 3,
                  /* lineColor: Colors.amber, */
                  tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
                  tooltipSettings: InteractiveTooltip(
                      enable: true,
                      format: 'Status: point.y%',
                      borderColor: Colors.amber,
                      borderWidth: 3)),
              series: <LineSeries<Data, String>>[
                LineSeries<Data, String>(
                  dataSource: <Data>[
                    Data('1', 35),
                    Data('2', 28),
                    Data('3', 34),
                    Data('4', 32),
                    Data('5', 40),
                    Data('6', 35),
                    Data('7', 28),
                    Data('8', 34),
                    Data('9', 32),
                    Data('10', 40),
                    Data('11', 35),
                    Data('12', 28),
                    Data('13', 34),
                    Data('14', 32),
                    Data('15', 40),
                    Data('16', 35),
                    Data('17', 28),
                    Data('18', 34),
                    Data('19', 32),
                    Data('20', 40),
                  ],
                  xValueMapper: (Data data, _) => data.time,
                  yValueMapper: (Data data, _) => data.temp,
                ),
                LineSeries<Data, String>(
                  dataSource: <Data>[
                    Data('1', 35),
                    Data('2', 18),
                    Data('3', 31),
                    Data('4', 12),
                    Data('5', 41),
                    Data('6', 25),
                    Data('7', 21),
                    Data('8', 35),
                    Data('9', 35),
                    Data('10', 40),
                    Data('11', 35),
                    Data('12', 18),
                    Data('13', 54),
                    Data('14', 30),
                    Data('15', 10),
                    Data('16', 15),
                    Data('17', 18),
                    Data('18', 54),
                    Data('19', 62),
                    Data('20', 10),
                  ],
                  xValueMapper: (Data data, _) => data.time,
                  yValueMapper: (Data data, _) => data.temp,
                )
              ],
            ),
            Expanded(
              child: Scrollbar(
                interactive: false,
                radius: Radius.circular(90),
                child: ListView(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 3, color: Colors.blue)),
                        child: GestureDetector(
                            onTap: () => print('degree data'),
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("2023.08.07",
                                    textAlign: TextAlign.left,
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
      ),
    );
  }
}

class Data {
  Data(this.time, this.temp);
  final String time;
  final double temp;
}
