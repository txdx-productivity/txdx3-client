import 'dart:async';

import "package:riverpod/riverpod.dart";

import "package:pocketbase/pocketbase.dart";
import 'package:shared_preferences/shared_preferences.dart';

import 'models/state_manager.dart';
import 'models/txdx_item.dart';
import 'models/txdx_state.dart';


final sharedPreferencesProvider = FutureProvider<SharedPreferences>((ref) async {
  return SharedPreferences.getInstance();
});

final pocketBasePod = Provider((ref) {
  return PocketBase("http://127.0.0.1:8090");
});

final stateManagerPod = Provider<StateManager>((ref) {
  final pb = ref.watch(pocketBasePod);
  return StateManager(pocketBase: pb);
});

final statePod = Provider<TxDxState> ((ref) {
  final stateManager = ref.watch(stateManagerPod);
  return stateManager.state;
});

//
// @riverpod
// AuthStore? authStore(AuthStoreRef ref) {
//   // TODO: Implement user auth
//   return null;
// }


//
// @riverpod
// Future<List<TxDxItem>> items(ItemsRef ref) async {
//   final stateManager = ref.watch(stateManagerProvider);
//   return stateManager.state.items;
// }
