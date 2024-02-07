import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'txdx_state.dart';

part 'state_manager.g.dart';

@riverpod
class StateManager extends  _$StateManager {
  @override
  TxDxState build() => const TxDxState();

  // TODO: Add state manipulation methods

}
