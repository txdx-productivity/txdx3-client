import 'package:json_annotation/json_annotation.dart';

part "payload.g.dart";

@JsonSerializable()
class Payload {
  final String title;
  final String? description;
  final DateTime? dueOn;
  final DateTime? completedAt;

  Payload({required this.title, this.description, this.dueOn, this.completedAt});

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);

  Map<String, dynamic> toJson() => _$PayloadToJson(this);
}