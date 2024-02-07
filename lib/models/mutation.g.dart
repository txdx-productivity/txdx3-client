// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mutation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mutation _$MutationFromJson(Map<String, dynamic> json) => Mutation(
      id: json['id'] as String,
      payload: Payload.fromJson(json['payload'] as Map<String, dynamic>),
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$MutationToJson(Mutation instance) => <String, dynamic>{
      'id': instance.id,
      'payload': instance.payload,
      'created': instance.created.toIso8601String(),
    };
