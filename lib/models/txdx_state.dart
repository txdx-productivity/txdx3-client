import 'package:freezed_annotation/freezed_annotation.dart';

import 'txdx_item.dart';

part 'txdx_state.freezed.dart';

@freezed
class TxDxState with _$TxDxState {
  const factory TxDxState({
    @Default([]) List<TxDxItem> items,
  }) = _TxDxState;
}