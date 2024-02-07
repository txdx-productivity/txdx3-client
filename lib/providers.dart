import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import "package:pocketbase/pocketbase.dart";
import 'package:txdx3_client/models/txdx_item.dart';

import 'models/mutation.dart';
import 'models/state_manager.dart';

part 'providers.g.dart';

@riverpod
Future<SharedPreferences> sharedPreferences(SharedPreferencesRef ref) async {
  return SharedPreferences.getInstance();
}

@riverpod
PocketBase pocketBase(PocketBaseRef ref) {
  return PocketBase("http://127.0.0.1:8090");
}

@riverpod
AuthStore? authStore(AuthStoreRef ref) {
  // TODO: Implement user auth
  return null;
}

final _mutationsStream = StreamController<List<Mutation>>();

@riverpod
Stream<List<Mutation>> mutations(MutationsRef ref) async* {
  final pb = ref.watch(pocketBaseProvider);
  ref.onDispose(() {
    pb.collection("mutations").unsubscribe("*");
    _mutationsStream.close();
  });

  var mutationsList = <Mutation>[];

  pb.collection("mutations").subscribe("*", (event) {
    final mutation = Mutation.fromRecord(event.record!);
    mutationsList = [...mutationsList, mutation];
    _mutationsStream.add(mutationsList);
  });

  await for (final data in _mutationsStream.stream) {
    yield data;
  }
}

