class SmokeData {
  SmokeData({required this.time, required this.on});
  final DateTime time;
  final bool on;

  factory SmokeData.fromJson(Map<String, dynamic> json) {
    final date = DateTime.parse(json['date']);
    final hour = json['hour'];
    final minute = json['minute'];
    final second = json['second'];
    final status = json['status'] == 1;

    return SmokeData(
      time: DateTime(date.year, date.month, date.day, hour, minute, second),
      on: status,
    );
  }
}

class SparkData {
  SparkData({required this.time, required this.on});
  final DateTime time;
  final bool on;

  factory SparkData.fromJson(Map<String, dynamic> json) {
    final date = DateTime.parse(json['date']);
    final hour = json['hour'];
    final minute = json['minute'];
    final second = json['second'];
    final status = json['status'] == 1;

    return SparkData(
        on: status,
        time: DateTime(date.year, date.month, date.day, hour, minute, second));
  }
}
