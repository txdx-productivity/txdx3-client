import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:txdx3_client/providers.dart';
import 'package:txdx3_client/theme.dart';

import 'item/item_tile.dart';
import 'window_buttons.dart';

class MainView extends HookConsumerWidget {
  const MainView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(itemsPod);
    final isDesktop = ref.watch(isDesktopPod);

    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [backgroundStartColor, backgroundEndColor],
              stops: [0.0, 1.0]),
        ),
        child: Column(children: [
          if (isDesktop) WindowTitleBarBox(
            child: Row(
              children: [
                Expanded(flex: 1, child: MoveWindow()),
                const WindowButtons()
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return ItemTile(item: item);
                  },
            ),
          ),
        ]),
      ),
    );
  }
}
