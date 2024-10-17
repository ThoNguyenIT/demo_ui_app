import 'package:demo_92024/app/data/models/raw_data.dart';
import 'package:demo_92024/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../controllers/spark_controller.dart';

class SparkPage extends GetView<SparkController> {
  const SparkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SparkController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
              onPressed: () => Get.offAllNamed(AppRoutes.home)),
          elevation: 0,
          backgroundColor: Colors.transparent),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Obx(
                () => controller.sparkData.isNotEmpty
                    ? SfCartesianChart(
                        primaryXAxis: CategoryAxis(isVisible: false),
                        primaryYAxis: NumericAxis(
                            isVisible: false,
                            maximum: 1,
                            minimum: 0,
                            interval: 1),
                        trackballBehavior: TrackballBehavior(
                            enable: true,
                            tooltipDisplayMode:
                                TrackballDisplayMode.groupAllPoints,
                            tooltipSettings: InteractiveTooltip(
                                borderWidth: 4,
                                format: 'Status: point.y',
                                borderColor: Colors.amber),
                            lineWidth: 4,
                            lineColor: Colors.amber,
                            shouldAlwaysShow: true,
                            activationMode: ActivationMode.singleTap),
                        series: <ColumnSeries<SparkData, String>>[
                          ColumnSeries<SparkData, String>(
                              width: 1,
                              spacing: 0,
                              dataSource: controller.sparkData,
                              yValueMapper: (SparkData data, _) => 1,
                              xValueMapper: (SparkData data, _) =>
                                  '${data.time.hour.toString().padLeft(2, '0')}:${data.time.minute.toString().padLeft(2, '0')}',
                              pointColorMapper: (SparkData data, _) =>
                                  data.on ? Colors.blue[800] : Colors.red[800])
                        ],
                      )
                    : Center(child: CircularProgressIndicator()),
              ),
            ),
            Expanded(
              flex: 4,
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
                            onTap: () => print('2024.10.10 spark'),
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("2024.10.10",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))))),
                    /*
                    for (var i = 0; i < 10; i++)
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 3, color: Colors.blue)),
                        child: GestureDetector(
                            child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text("2024.10.10",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            onTap: () => print('2024.10.10 spark'))),
                    */
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
