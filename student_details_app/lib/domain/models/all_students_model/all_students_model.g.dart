// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_students_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllStudentsModel _$AllStudentsModelFromJson(Map<String, dynamic> json) =>
    AllStudentsModel(
      students: (json['students'] as List<dynamic>?)
              ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      message: json['message'] as String?,
      status: json['status'] as int,
    );

Map<String, dynamic> _$AllStudentsModelToJson(AllStudentsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'students': instance.students,
      'message': instance.message,
    };
