import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:platform_info/platform_info.dart';
import 'package:txdx3_client/theme.dart';

import 'constants.dart';
import 'providers.dart';
import 'widgets/main_view.dart';
import 'widgets/sidebar.dart';

void main() {
  final isDesktop = desktopOperatingSystems.contains(platform.operatingSystem);

  runApp(ProviderScope(
    overrides: [
      isDesktopPod.overrideWithValue(isDesktop),
    ],
    child: const TxDx3App()
  ));

  if (isDesktop) {
    doWhenWindowReady(() {
      const initialSize = Size(720, 576);
      const minSize = Size(640, 480);

      appWindow.size = initialSize;
      appWindow.minSize = minSize;
      appWindow.alignment = Alignment.center;
      appWindow.title = "TxDx3";
      appWindow.show();
    });
  }
}


class TxDx3App extends HookConsumerWidget {
  const TxDx3App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDesktop = ref.watch(isDesktopPod);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: isDesktop ? null : AppBar(
          title: const Text("TxDx3"),
          actions: [
            IconButton(
              onPressed: () {
                // TODO: Implement add new item widget/slider
              },
              icon: const Icon(Icons.add))
          ],
        ),
        drawer: isDesktop ? null : const Sidebar(),
        body: WindowBorder(
          color: borderColor,
          width: 1,
          child: Row(
            children: [
              if (isDesktop) Sidebar(),
              MainView()
            ],
          ),
        ),
      ),
    );
  }
}









