import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthModal extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return AlertDialog(
      title: Text("Please sign-in"),
      content: Column(
        children: [
          Text("To make use of synchronization features, you ne")
        ]
      )
    );
  }
}