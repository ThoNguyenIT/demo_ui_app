import 'dart:convert';
import 'package:demo_92024/app/data/models/raw_data.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SparkController extends GetxController {
  final RxList<SparkData> sparkData = RxList<SparkData>();

  @override
  void onInit() {
    super.onInit();
    loadSmokeData();
  }

  void loadSmokeData() async {
    final jsonString =
        await rootBundle.loadString('assets/mockdata/MOCK_DATA.json');
    final jsonResponse = json.decode(jsonString) as List;
    sparkData.value = jsonResponse
        .map((data) => SparkData.fromJson(data as Map<String, dynamic>))
        .toList();
  }
}
