import 'package:txdx3_client/models/mutation.dart';

import 'txdx_item.dart';

class TxDxState  {
  List<TxDxItem> items = [];

  void applyMutations(List<Mutation> mutations) {
    for (var mutation in mutations) {
      applyMutation(mutation);
    }
  }

  void applyMutation(Mutation mutation) {
    switch (mutation.payload.action) {
      // TODO Merge create_item and update_item into an upsert style mutation.
      case "create_item":
        final item = TxDxItem.fromPayload(mutation.payload);
        items = [...items, item];
        break;
      case "update_item":
        final currentItem = items.where((item) => item.uuid == mutation.payload.uuid).first;
        final updatedItem = currentItem.copyWith(title: mutation.payload.title);
        items = items.map((item) => item.uuid == updatedItem.uuid ? updatedItem : item).toList();
        break;
      // case "delete":
      //   newState = newState.copyWith(items: newState.items.where((item) => item.uuid != mutation.payload.item.uuid).toList());
      //   break;
    }
  }
}