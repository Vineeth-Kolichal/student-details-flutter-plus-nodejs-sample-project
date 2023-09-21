import 'package:json_annotation/json_annotation.dart';

import 'student.dart';

part 'all_students_model.g.dart';

@JsonSerializable()
class AllStudentsModel {
  final int status;
  List<Student> students;
  String? message;

  AllStudentsModel({this.students = const [],this.message,required this.status});

  factory AllStudentsModel.fromJson(Map<String, dynamic> json) {
    return _$AllStudentsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllStudentsModelToJson(this);
}
