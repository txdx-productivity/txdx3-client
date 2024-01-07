// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Command _$CommandFromJson(Map<String, dynamic> json) => Command(
      id: json['id'] as String,
      name: json['name'] as String,
      payload: Payload.fromJson(json['payload'] as Map<String, dynamic>),
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$CommandToJson(Command instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'payload': instance.payload,
      'created': instance.created.toIso8601String(),
    };
