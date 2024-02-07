import 'package:json_annotation/json_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

import 'payload.dart';

part "mutation.g.dart";

@JsonSerializable()
class Mutation {
  final String id;
  final Payload payload;
  final DateTime created;

  Mutation({required this.id, required this.payload, required this.created});

  factory Mutation.fromRecord(RecordModel record) => Mutation.fromJson(record.toJson());

  factory Mutation.fromJson(Map<String, dynamic> json) => _$MutationFromJson(json);

  Map<String, dynamic> toJson() => _$MutationToJson(this);

}