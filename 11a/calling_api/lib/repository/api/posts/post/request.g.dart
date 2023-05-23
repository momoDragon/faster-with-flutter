// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostsPostRequestBody _$$_PostsPostRequestBodyFromJson(
        Map<String, dynamic> json) =>
    _$_PostsPostRequestBody(
      userId: json['userId'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$_PostsPostRequestBodyToJson(
        _$_PostsPostRequestBody instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'title': instance.title,
      'body': instance.body,
    };
