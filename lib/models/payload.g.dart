// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payload _$PayloadFromJson(Map<String, dynamic> json) => Payload(
      title: json['title'] as String,
      description: json['description'] as String?,
      dueOn: json['dueOn'] == null
          ? null
          : DateTime.parse(json['dueOn'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
    );

Map<String, dynamic> _$PayloadToJson(Payload instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'dueOn': instance.dueOn?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
    };
