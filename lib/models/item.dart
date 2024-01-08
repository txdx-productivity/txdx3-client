import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';

@freezed
class Item with _$Item {
  const factory Item({
    String? title,
    String? description,
    DateTime? dueOn,
    DateTime? completedAt,
  }) = _Item;
}
