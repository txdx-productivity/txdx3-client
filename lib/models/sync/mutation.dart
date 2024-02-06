import 'package:flutter_data/flutter_data.dart';

class Mutation extends DataModel<Mutation> {
  @override
  final int? id;
  final String payload;

  Mutation({this.id, required this.payload});
}
