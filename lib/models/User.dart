// ignore_for_file: file_names

import 'package:json_annotation/json_annotation.dart';

part 'User.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "email")
  final String email;
  @JsonKey(name: "first_name")
  final String firstName;
  @JsonKey(name: "last_name")
  final String lastName;
  @JsonKey(name: "avatar")
  final String avatar;

  User(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.avatar});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
