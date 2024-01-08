import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:txdx3_client/providers.dart';
import 'package:txdx3_client/theme.dart';

import 'window_buttons.dart';

class MainView extends HookConsumerWidget {
  const MainView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commands = ref.watch(commandsListProvider);

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
          WindowTitleBarBox(
            child: Row(
              children: [
                Expanded(flex: 1, child: MoveWindow()),
                const WindowButtons()
              ],
            ),
          ),
          Container(
              child: switch (commands) {
            AsyncError(:final error) => Text("error: $error"),
            AsyncData(:final value) => Text(value.first.name),
            _ => const Text("Please, stand by..."),
          })
        ]),
      ),
    );
  }
}
