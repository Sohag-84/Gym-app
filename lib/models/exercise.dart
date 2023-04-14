// ignore_for_file: public_member_api_docs, sort_constructors_first
class Excercise {
  Excercise({
    required this.title,
    required this.prelude,
    required this.duration,
    this.index,
    this.startTime,
  });

  final String? title;
  final int? prelude;
  final int? duration;
  final int? index;
  final int? startTime;

  factory Excercise.fromJson(Map<String, dynamic> json, int index, int startTime) => Excercise(
        title: json["title"],
        prelude: json["prelude"],
        duration: json["duration"],
        index: index,
        startTime: startTime,
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "prelude": prelude,
        "duration": duration,
      };
}
