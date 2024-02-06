import 'package:clock/clock.dart';
import 'package:uuid/uuid.dart';

import 'txdx_item.dart';

/// TxDxState contains the local app state. It can process and generate
/// mutations to sync with a remote server.
class TxDxState {
  List<TxDxItem> items = [];

  late final uuid;
  late final clock;

  TxDxState({uuid, clock}) {
    this.uuid = uuid ?? const Uuid();
    this.clock = clock ?? const Clock();
  }

  /// Creates a new, empty item with a new UUID and createdAt timestamp.
  TxDxItem createItem() {
    final item = TxDxItem(
      uuid: _generateUuid(),
      createdAt: clock.now().toUtc(),
    );
    items.add(item);
    return item;
  }

  String _generateUuid() {
    return uuid.v1();
  }
}
