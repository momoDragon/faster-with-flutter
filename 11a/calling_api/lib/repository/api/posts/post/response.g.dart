// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostsPostResponseBody _$$_PostsPostResponseBodyFromJson(
        Map<String, dynamic> json) =>
    _$_PostsPostResponseBody(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$_PostsPostResponseBodyToJson(
        _$_PostsPostResponseBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'body': instance.body,
    };
