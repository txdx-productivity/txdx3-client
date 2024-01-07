import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import "package:pocketbase/pocketbase.dart";

import 'models/command.dart';

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

@riverpod
Future<List<Command>> commandsList(CommandsListRef ref) async {
  final pb = ref.watch(pocketBaseProvider);
  final results = await pb.collection("commands").getFullList();

  return results.map((record) => Command.fromRecord(record)).toList();
}
