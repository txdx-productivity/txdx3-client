import "package:pocketbase/pocketbase.dart";
import "package:riverpod/riverpod.dart";
import 'package:shared_preferences/shared_preferences.dart';
import 'package:txdx3_client/models/mutation_repository.dart';

import 'models/txdx_item.dart';
import 'models/txdx_item_manager.dart';


final sharedPreferencesProvider = FutureProvider<SharedPreferences>((ref) async {
  return SharedPreferences.getInstance();
});

// Provider for the PocketBase instance
final pocketBasePod = Provider((ref) {
  return PocketBase("http://127.0.0.1:8090");
});

// Provider of the MutationRepository, retrieving historical and real-time mutations.
final mutationRepositoryPod = Provider<MutationRepository>((ref) {
  final pb = ref.watch(pocketBasePod);
  return MutationRepository(pocketBase: pb);
});

// Provider for the TxDxItemManager, managing the state of the items.
final txdxItemManagerPod = NotifierProvider<TxDxItemManager, List<TxDxItem>>(() {
  return TxDxItemManager();
});

final itemsPod = Provider<List<TxDxItem>>((ref) {
  return ref.watch(txdxItemManagerPod);
});