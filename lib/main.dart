import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:txdx3_client/theme.dart';

import 'widgets/main_view.dart';
import 'widgets/sidebar.dart';

void main() {
  runApp(ProviderScope(child: TxDx3App()));

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


class TxDx3App extends StatelessWidget {
  const TxDx3App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WindowBorder(
          color: borderColor,
          width: 1,
          child: const Row(
            children: [Sidebar(), MainView()],
          ),
        ),
      ),
    );
  }
}









