import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:txdx3_client/models/txdx_item.dart';
import 'package:txdx3_client/providers.dart';

class ItemTile extends HookConsumerWidget {
  const ItemTile({Key? key, required this.item}) : super(key: key);

  final TxDxItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(selectedItemPod);
    final isSelected = selected == item;

    return Container(
      color: isSelected ? Colors.blue : Colors.transparent,
      child: ListTile(
        title: Text(item.title ?? "Untitled item"),
        leading: Checkbox(

          value: item.isCompleted,
          onChanged: (value) {
            // TODO: Implement the mutation to update the item's completion status.
          }
        ),
        onTap: () {
          ref.read(selectedItemPod.notifier).state = item;
        },
      ),
    );
  }
}
