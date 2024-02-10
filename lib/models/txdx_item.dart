import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:txdx3_client/models/payload.dart';

part 'txdx_item.freezed.dart';

@freezed
class TxDxItem with _$TxDxItem {
  const TxDxItem._();

  const factory TxDxItem({
    required String uuid,
    String? title,
    String? description,
    DateTime? dueOn,
    DateTime? completedAt,
  }) = _TxDxItem;

  bool get isCompleted => completedAt != null;

  // Creates a new TxDx item with the specified payload UUID.
  factory TxDxItem.fromPayload(Payload payload) {
    return TxDxItem(
      uuid: payload.uuid,
    );
  }
}