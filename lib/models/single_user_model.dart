import 'package:dio_json/models/User.dart';
import 'package:json_annotation/json_annotation.dart';
part 'single_user_model.g.dart';

@JsonSerializable()
class SingleUserModel {
  @JsonKey(name: "data")
  final User user;

  SingleUserModel(this.user);

  factory SingleUserModel.fromJson(Map<String, dynamic> json) =>
      _$SingleUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$SingleUserModelToJson(this);
}
