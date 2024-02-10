import 'package:riverpod/riverpod.dart';
import 'package:txdx3_client/providers.dart';

import 'mutation.dart';
import 'txdx_item.dart';

class TxDxItemManager extends Notifier<List<TxDxItem>> {

  @override
  List<TxDxItem> build() {
    final mutationsRepo = ref.watch(mutationRepositoryPod);

    mutationsRepo.mutationsStream.stream.listen((mutations) {
      _applyMutations(mutations);
    });

    return [];
  }

  void _applyMutations(List<Mutation> mutations) {
    for (var mutation in mutations) {
      _applyMutation(mutation);
    }
  }

  void _applyMutation(Mutation mutation) {
    switch (mutation.payload.action) {
    // TODO Merge create_item and update_item into an upsert style mutation.
      case "create_item":
        final item = TxDxItem.fromPayload(mutation.payload);
        state = [...state, item];
        break;
      case "update_item":
        final currentItem = state.where((item) => item.uuid == mutation.payload.uuid).first;
        final updatedItem = currentItem.copyWith(title: mutation.payload.title);
        state = state.map((item) => item.uuid == updatedItem.uuid ? updatedItem : item).toList();
        break;
    // case "delete":
    //   newState = newState.copyWith(items: newState.items.where((item) => item.uuid != mutation.payload.item.uuid).toList());
    //   break;
    }
  }
}
