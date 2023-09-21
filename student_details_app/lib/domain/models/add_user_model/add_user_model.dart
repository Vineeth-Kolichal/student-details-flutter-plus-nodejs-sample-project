import 'package:json_annotation/json_annotation.dart';

part 'add_user_model.g.dart';

@JsonSerializable()
class AddUserModel {
  final String name;
  final int age;

  AddUserModel({required this.name,required this.age});

  factory AddUserModel.fromJson(Map<String, dynamic> json) {
    return _$AddUserModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddUserModelToJson(this);
}
