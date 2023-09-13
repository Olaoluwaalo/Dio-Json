// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleUserModel _$SingleUserModelFromJson(Map<String, dynamic> json) =>
    SingleUserModel(
      User.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SingleUserModelToJson(SingleUserModel instance) =>
    <String, dynamic>{
      'data': instance.user,
    };
