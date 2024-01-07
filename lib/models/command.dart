import 'package:json_annotation/json_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

import 'payload.dart';

part "command.g.dart";

@JsonSerializable()
class Command {
  final String id;
  final String name;
  final Payload payload;
  final DateTime created;

  Command({required this.id, required this.name, required this.payload, required this.created});

  factory Command.fromRecord(RecordModel record) => Command.fromJson(record.toJson());

  factory Command.fromJson(Map<String, dynamic> json) => _$CommandFromJson(json);

  Map<String, dynamic> toJson() => _$CommandToJson(this);

}