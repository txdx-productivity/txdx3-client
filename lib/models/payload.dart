import 'package:json_annotation/json_annotation.dart';

part "payload.g.dart";

@JsonSerializable()
class Payload {
  final String uuid;
  final String action;
  String? title;
  String? description;
  DateTime? dueOn;
  DateTime? completedAt;

  Payload({required this.uuid, required this.action});

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
  Map<String, dynamic> toJson() => _$PayloadToJson(this);
}