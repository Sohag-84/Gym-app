import 'package:gym_app/models/exercise.dart';

class Workout {
  final String? title;
  final List<Excercise> exercises;
  const Workout({required this.title, required this.exercises});

  factory Workout.fromJson(Map<String, dynamic> json) {
    List<Excercise> exercises = [];
    int index = 0;
    int startTime = 0;
    for (var i in (json['exercises'] as Iterable)) {
      exercises.add(Excercise.fromJson(json, index, startTime));
      index++;
      startTime += exercises.last.prelude! + exercises.last.duration!;
    }
    return Workout(
      title: json['title'] as String?,
      exercises: exercises,
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'exercises': exercises,
      };
}
